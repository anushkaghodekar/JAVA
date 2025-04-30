import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class login
{ public static void main(String[] args)
{ 
JFrame frame = new JFrame("LOGIN FORM");
frame.setSize(300,200);
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
frame.setLocationRelativeTo(null);

JLabel user = new JLabel("Enter username");
JTextField userfield = new JTextField(5);

JLabel pass = new JLabel("Enter password");
JTextField passfield = new JTextField(5);

JButton login = new JButton("login");
JTextField result = new JTextField(10);
 result.setEditable(false); 

login.addActionListener( new ActionListener()
{ 
@Override
public void actionPerformed(ActionEvent e)
{
String username = userfield.getText();
String password= passfield.getText();

result.setText("Login succesfull. Your Username =" + username + " & your password =" + password );
}
}
);

frame.setLayout(new BoxLayout(frame.getContentPane(), BoxLayout.Y_AXIS));
frame.add(user);
frame.add(userfield);
frame.add(pass);
frame.add(passfield);
frame.add(login);
frame.add(result);
frame.setVisible(true);
}
}
