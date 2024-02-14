class EducationModel {
  final String name;
  final String organization;
  final String date;
  final String percentage;

  EducationModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.percentage,
  });
}

List<EducationModel> educationList = [
  EducationModel(
    name: 'Bachelor of computer application(BCA)',
    organization: 'Biyani Girls College , jaipur,Rajasthan',
    date: 'July 2019',
    percentage: '84%',
  ),
    EducationModel(
    name: 'Master of computer Application(AI)',
    organization: 'Gautam Buddha University, Greater Noida,Uttar Pradesh',
    date: 'Present',
    percentage: '8.80',
  ),
];
