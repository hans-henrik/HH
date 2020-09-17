Teacher[] teachers = new Teacher[10];
Student student1;
Student student2;
void setup()
{
  String[] names={"hh","ida","bassemand","Lassefar","Ea","tullepigen","Frank","Cola","Fanta","Pepsi"};
Student[] students = new Student[10];
for(int i=0; i<names.length; i=i+1)
{
  students[i] = new Student(names[i],i+10,false,'d');
  println(students[i].name+ " " + students[i].age + " " );
}

 for (int i=0; i<teachers.length; i=i+1)
 {
   teachers[i]=new Teacher("ida",45,"woman");
 teachers[i].printT();
 }
 
  //teacher = new Teacher("ida",45,"woman");
  student1 = new Student("HH",23,false,'d');
  student2 = new Student("Oliver",24,false,'d');
//teacher.printT();
printS(student1);
printS(student2);
//println(student2.name + student2.datamatikerTeam);
}

void printS(Student TEMP)
{
  println(TEMP.name);
  println(TEMP.datamatikerTeam);
}