# Alerts on VM exceeeding 4% CPU
- Create the group and set up to email to your account.
  
- Then create the rule on the VM page, 
- Select the signal, in our case Percentage CPU
![alt text](images/select_signal.png)

- Set the alert Logic sit alerts us when cpu is greater than whatever you decide on through load testing (in my case 4%)
    ![alt text](images/alert_logic.png)
    ![alt text](images/alert_logic_two.png)
    
- Set the action group:
    ![alt text](images/actions.png)
    
- Name and options:
    ![alt text](images/details.png)
    
- Test the alert:
![alt text](images/alert_on_azure.png)
![alt text](images/alert_email.png)