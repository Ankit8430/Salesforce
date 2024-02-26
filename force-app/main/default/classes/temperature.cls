public with sharing class temperature {
    public static decimal FtoC(Decimal fh){
        Decimal res=(fh-32)*5/9;
        return res.setScale(2);
    }
}