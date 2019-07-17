import './apartment.dart';
class CurrentData {
  CurrentData();
  List<Apartment> apartments = [];

  void addApartments(List<Apartment> apts){
    apartments.addAll(apts);
  }
  void addApartment(Apartment apt){
    apartments.add(apt);
  }
  List<Apartment> getApartments (){
    return apartments;
  }
}