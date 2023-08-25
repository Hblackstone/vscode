public class Sayipozitifnegatifnotr {
    
    public static string spnn(integer i){
        if (i>0){
            system.debug(i+ '  pozitif');
            return 'pozitif';
            
        }else if (i<0){
            system.debug(i+ '  negatif');
            return 'negatif';
            
        }else{
           
             system.debug(i+ '  notr');
            return 'notr';
        }
        
    }

}