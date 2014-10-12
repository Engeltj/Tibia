#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <List.h>

#define CAT 14
#define CEILING(x) (int)(x) + (1 - (int)((int)((x) + 1) - (x)))

void parseFile(List ** lists){
	FILE * fp = fopen("items.txt", "r");
	char * pch = NULL;
	char line[100] = "";
	int x=0;
	if (fp != NULL){
		while (fgets(line, 100, fp) != NULL){
			x=0;
			pch = strtok(line, "\t");
			while (pch != NULL){
				if (strlen(pch) > 2){
					char * newNode = malloc(100);
					strncpy(newNode, pch, 100);
				
					if (newNode[strlen(newNode)-1] == '\n')
						newNode[strlen(newNode)-1] = '\0';
					lists[x]->tail = addEnd(lists[x]->tail, newNode);
				}
				pch = strtok(NULL, "\t");
				x++;
			}
		}
		fclose(fp);
	}
}

void read_new_attr(List ** lists, int * new_id, int * new_level){
	int x=0,y=0;
	for (x=0;x<CAT;x++){
		double num=1.00;
		ListNode * nodePtr = lists[x]->head;
		double size = (double) listSize(nodePtr);
		nodePtr=nodePtr->next;
		
		while (nodePtr != NULL){
			//printf("%s\n",(char *)nodePtr->key);
			int level = pow((num/size),2.0) * 1000;
			if (num == 1)
				level = 1;
			new_id[y] = atoi(nodePtr->key);
			new_level[y] = level;
			//printf("ID: %d\n", new_id[y]);
			//printf("id: %d  new_level:%d %d \n", new_id[y], new_level[y], level);
			nodePtr=nodePtr->next;
			num++;
			y++;
		}
	}
}

char * getItemName(char * line, int count){
	//printf("line:%s %d\n", line, count);
	char * pch = strtok(line, "\"");
	for (int x=0;x<count;x++){
		if (pch != NULL)
			pch = strtok(NULL, "\"");
	}
	return pch;
}

void update_items(char ** items, int * new_id, int * new_level){
	FILE * weaponsXML = fopen("weapons.xml", "w+");
	fprintf(weaponsXML, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
	fprintf(weaponsXML, "<weapons>\n");
	int x=0, y=0;
	
	int line_attack=0;
	int line_defense=0;
	int line_armor=0;
	int two_handed=0;
	int flag = 0;
	
	int wand=0;
	int distance=0;
	int ammo=0;
	
	char temp[255]="";
	char locate[100]="";
	char name[255]="";
	while (new_id[x] != 0){
		line_attack=0;
		line_defense=0;
		line_armor=0;
		two_handed=0;
		while (strlen(items[y]) > 0){
			int pchCount=3;
			flag = 0;
			sprintf(locate, "\"%d\"", new_id[x]);
			if ((strstr(items[y], locate) != NULL) && (strstr(items[y], "/>") == NULL) && (strstr(items[y], "/ >") == NULL)){
				//flags
				if (strstr(items[y], "wand"))
					wand = 1;
				else
					wand = 0;
				distance = 0;
				ammo = 0;
				
				//grab name
				if (strstr(items[y], "article"))
					pchCount+=2;
				strncpy(temp, items[y], 100);
				char *pch = strtok(temp, "\"");
				*name = '\0';
				while (pch != NULL){ 
					if (strcmp(pch, " name=") == 0){
						pch = strtok(NULL, "\"");
						strncpy(name, pch, 100);
						break;
					} else
						pch = strtok(NULL, "\"");
				}
				
				while(strstr(items[y], "</item>") == NULL){
					if (strstr(items[y], "key=\"attack\"") != NULL)
						line_attack = y;
					if (strstr(items[y], "key=\"defense\"") != NULL)
						line_defense = y;
					if (strstr(items[y], "key=\"armor\"") != NULL)
						line_armor = y;
					if (strstr(items[y], "value=\"two-handed\"") != NULL)
						two_handed = 1;
					if (strstr(items[y], "key=\"weaponType\" value=\"distance\"") != NULL)
						distance = 1;
					if (strstr(items[y], "key=\"weaponType\" value=\"ammunition\"") != NULL)
						ammo = 1;
					y++;
				}
				if (line_attack > 0){
					if (wand == 1)
						new_level[x] += 19;
					int temp_level = new_level[x];
					if (ammo == 1)
						temp_level = CEILING((double) temp_level / 10.0);
					sprintf(temp, "\t\t<attribute key=\"attack\" value=\"%d\"/>\n", temp_level);
					strncpy(items[line_attack], temp, 100);
					flag = 1;
				}
				if (line_defense > 0){
					int temp_level = new_level[x];
					if (two_handed == 1)
						temp_level = temp_level * 2;
					sprintf(temp, "\t\t<attribute key=\"defense\" value=\"%d\"/>\n", new_level[x]);
					strncpy(items[line_defense], temp, 100);
					flag = 1;
				}
				if (line_armor > 0){
					sprintf(temp, "\t\t<attribute key=\"armor\" value=\"%d\"/>\n", new_level[x]);
					strncpy(items[line_armor], temp, 100);
					flag = 1;
				}
				if ((flag == 0) && (new_id[x] != 7346))
					printf("Item '%d' failed to update\n", new_id[x]);
				else if (wand == 1){
					sprintf(temp, "\t<wand id=\"%d\" mana=\"%d\" level=\"%d\" event=\"script\" value=\"wands.lua\"> <!-- %s -->\n", new_id[x], new_level[x], new_level[x], name);
					fprintf(weaponsXML, temp);
					fprintf(weaponsXML, "\t\t<vocation id=\"4\"/>\n");
					fprintf(weaponsXML, "\t\t<vocation id=\"5\"/>\n");
					fprintf(weaponsXML, "\t</wand>\n");
				}
				else if (distance == 1){
					sprintf(temp, "\t<distance id=\"%d\" level=\"%d\" unproperly=\"1\" event=\"function\" value=\"default\"/> <!-- %s -->\n", new_id[x], new_level[x],name);
					fprintf(weaponsXML, temp);
				}
				else if (ammo == 1){
					sprintf(temp, "\t<distance id=\"%d\" level=\"%d\" event=\"function\" value=\"default\"/> <!-- %s -->\n", new_id[x], new_level[x], name);
					fprintf(weaponsXML, temp);
				}
				else{
					name[strlen(name)] = '\0';
					sprintf(temp, "\t<melee id=\"%d\" level=\"%d\" unproperly=\"1\" event=\"function\" value=\"default\"/> <!-- %s -->\n", new_id[x], new_level[x],name);
					fprintf(weaponsXML, temp);
				}
			}
			*locate = '\0';
			*temp = '\0';
			y++;
		}
		y=0;
		x++;
	}
	fprintf(weaponsXML, "</weapons>\n");
	fclose(weaponsXML);
}


char ** readItemsFile(){
	FILE * fp = fopen("items.xml", "r");
	char line[100]="";
	int x=0;
	char ** lines = malloc(sizeof(char *) * 40000);
	for (x=0; x < 40000; x++){
		lines[x] = malloc(sizeof(char) * 100);
		strncpy(lines[x], "", 100);
	}
	x=0;
	while (fgets(line, 100, fp) != NULL){
		strncpy(lines[x], line, 100);
		x++;
	}
	fclose(fp);
	return lines;
}

void write_file(char ** items){
	int x=0;
	FILE * fp = fopen("items_new.xml", "w+");
	if (fp != NULL){
		while (strstr(items[x], "</items>") == NULL){
			//printf("%s\n", items[x]);
			fprintf(fp, "%s", items[x]);
			x++;
		}
		fprintf(fp, "</items>\n");
		fclose(fp);
	}
}

int main(){
	int new_level[500], new_id[500];
	List ** lists = malloc(sizeof(List *) * CAT);
	for (int x=0;x<CAT;x++)
		lists[x] = createList();
	char ** itemFile = readItemsFile();
	parseFile(lists);
	read_new_attr(lists, new_id, new_level);
	update_items(itemFile, new_id, new_level);
	write_file(itemFile);
	return 0;
}