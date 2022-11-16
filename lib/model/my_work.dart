
class MyWork {
  final String id;
  final String name;
  final String description;
  final String experience;
  final String city;
  final String email;
  final String image;

  const MyWork({
    required this.id,
    required this.name,
    required this.description,
    required this.experience,
    required this.city,
    required this.email,
    required this.image,
  });

}

final myWorks = [
  new MyWork(id: '1', name: 'Auditor informatico',
      description: 'Importante Empresa busaca auditor informatico con ',
      experience: '* experiencia 2 años\n* trabajo en equipo\n* buen ambiente laboral',
      city: 'Quito Ecuador', email: 'iver@gmail.com', image: 'dev1.png'),
  new MyWork(id: '2', name: 'Auditor informatico',
      description: 'Importante Empresa busaca auditor informatico con ',
      experience: '* experiencia 2 años\n* trabajo en equipo\n* buen ambiente laboral',
      city: 'Quito Ecuador', email: 'iver@gmail.com', image: 'dev2.jpg'),
  new MyWork(id: '3', name: 'Auditor informatico',
      description: 'Importante Empresa busaca auditor informatico con ',
      experience: '* experiencia 2 años\n* trabajo en equipo\n* buen ambiente laboral',
      city: 'Quito Ecuador', email: 'iver@gmail.com', image: 'dev3.jpg'),
  new MyWork(id: '4', name: 'Auditor informatico',
      description: 'Importante Empresa busaca auditor informatico con ',
      experience: '* experiencia 2 años\n* trabajo en equipo\n* buen ambiente laboral',
      city: 'Quito Ecuador', email: 'iver@gmail.com', image: 'dev4.jpeg')
];
