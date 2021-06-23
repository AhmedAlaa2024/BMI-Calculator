
class CalculateBMI {
  CalculateBMI(this.weight, this.height);
  final int height;
  final int weight;
  late double result;
  String msg = "Normal";

  String calculateBMI(){
    result = weight / ((height / 100) * (height / 100));
    return result.toStringAsFixed(1);
  }

  String getDescription(){
    if(result > 25)
    {
      msg = "Overweight";
      return "You are overweighted, Try to lose your weight through some activity.";
    }
    else if (result > 18.5)
    {
      msg = "Normal";
      return "You have a normal weight, Keep moving.";
    }
    else
    {
      msg = "UnderWeight";
      return "You are underweighted, Try to gain some weight but don't go to fast food.";
    }
  }
}