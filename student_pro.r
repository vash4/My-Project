# WAP to input roll number, name, marks and phone of a student and display the values.

  student <-data.frame(stu_name <-c('sun','moon','saturn','jupiter'))
  stu_marks <-c(60,80,90,75)
  stu_phone <-c(1111111111,2222222222,333333333,444444444)
  print(Student)
  student$stu_name
  student$stu_marks
  #=====================================================================
  
  stu_name=("enter student name")
  stu_marks=as.numeric(readline(prompt = 'stu_marks'))
  stu_phone=as.numeric(readline(prompt = 'stu_phone'))
  print("student name =", stu_name)
  print("student marks =", stu_marks)
  print("student phone no =", stu_name)
  #-----------------------------------------------------------------------
  # WAP to input roll number, name and marks of a student in 5 subjects and calculate the total and average marks. Display all the values.marks
  marks=0
  sum=0
  rollno=c(01,02,03,04,05)
  name=c('venus','mars','mercury','moom')
  sub1=as.numeric(readline(prompt = 'sub1'))
  sub2=as.numeric(readline(prompt = 'sub2'))
  sub3=as.numeric(readline(prompt = 'sub3'))
  sub4=as.numeric(readline(prompt = 'sub4'))
  sub5=as.numeric(readline(prompt = 'sub5'))
  total=sub1+sub2+sub3+sub4+sub5
  avg=total/5
  print('total marks')
  