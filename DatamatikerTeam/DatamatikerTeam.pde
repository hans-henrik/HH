Teacher teacher;
Student student1;
Student student2;
void setup()
{
  teacher = new Teacher("ida",45,"woman");
  student1 = new Student("HH",23,false,'d');
  student2 = new Student("Oliver",24,false,'d');
teacher.printT();
printS(student1);
printS(student2);
//println(student2.name + student2.datamatikerTeam);
}

void printS(Student TEMP)
{
  println(TEMP.name);
  println(TEMP.datamatikerTeam);
}