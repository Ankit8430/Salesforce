@isTest
public with sharing class temperatureTest {
    @isTest
    private static void FtoCTest(){
        Decimal res=temperature.FtoC(70);
        System.assertEquals(21.11, res);
    }
}