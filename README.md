# Shoe Sizer
The application helps the user to find the correct shoe size. The idea came to my mind after I bought my usual shoe size but it was too big and I realised how the sizes can differ from company by company.

## User Interface
The screenshot below shows that the application has a simple **user interface**. 

<a href="https://ibb.co/zXB2YFf"><img width="250" height="500" src="https://i.ibb.co/CbY9Z60/Simulator-Screen-Shot-i-Phone-11-2021-06-21-at-21-20-38.png" alt="Simulator-Screen-Shot-i-Phone-11-2021-06-21-at-21-20-38" border="0"></a>

## How to Use
To get a result; 
1. The user needs to choose the gender. (Application does not let the user to have any result before they choose the gender.)

<a href="https://ibb.co/rsrcKG6"><img width="250" height="500" src="https://i.ibb.co/0tbFpjM/Simulator-Screen-Shot-i-Phone-11-2021-06-21-at-21-20-55.png" alt="Simulator-Screen-Shot-i-Phone-11-2021-06-21-at-21-20-55" border="0"></a>

2. Brand and the shoe size need to be chosen too. 
3. After all the variables are chosen, the user sees the result. 

<a href="https://ibb.co/GM581LQ"><img width="250" height="500" src="https://i.ibb.co/94r1fLH/Simulator-Screen-Shot-i-Phone-11-2021-06-21-at-21-21-06.png" alt="Simulator-Screen-Shot-i-Phone-11-2021-06-21-at-21-21-06" border="0"></a>

## Code

I have used the ***UIPickerView*** to make a list for both brand and shoe size. It is easy to keep brand names and shoe sizes in the *arrays* and I get both by using the following ***UIPickerView*** methods.

There were two different ***UIPickerView***, and I get the names with the names I gave for @IBOutlet.

    @IBOutlet weak var brandView: UIPickerView!
    @IBOutlet weak var sizeView: UIPickerView!


    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      
    if pickerView == brandView {
        
        return brandManager.brandViewData[row]
        
    }else{

        return brandManager.sizeViewData[row]
        
    }}
    
I also needed to define the shoe sizes as .5 and .0. So, thanks to **Swift** I found an easy way(stride) to do that by the following code and added them to the ***shoe size array.***
Every time the user chooses a new gender or a new brand, *the array which contains the shoe sizes* resets itself depending on the gender.

    func fillPickerView() {
        if femaleButton.isSelected {
            brandManager.sizeViewData.removeAll()
            for i in stride(from: 33, to: 45, by: 0.5){
                
                brandManager.sizeViewData.append(String(i))
            }
            
        } else if maleButton.isSelected {
            brandManager.sizeViewData.removeAll()
            for i in stride(from: 35, to: 48.5, by: 0.5){
            
                
                brandManager.sizeViewData.append(String(i))
            }
            
        }  else {
            brandManager.sizeViewData = ["Choose Gender"]
        }
        
    }

When the gender is selected, the gender symbol becomes colored and the unselected gender symbol is black. As default, both are black. The state images have been created in [Canva](https://www.canva.com).

### Thanks. 
