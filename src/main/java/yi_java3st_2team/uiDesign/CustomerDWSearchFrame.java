package yi_java3st_2team.uiDesign;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenuItem;
import javax.swing.JPanel;
import javax.swing.JPopupMenu;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.SwingConstants;
import javax.swing.UIManager;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumnModel;

@SuppressWarnings("serial")
public class CustomerDWSearchFrame extends JFrame {
	private JPanel contentPane;
	private JPanel pCenter;
	private JPanel pNorth;
	private JPanel pEmployee;
	private JPanel pCust;
	private JPanel pEmpAuth;
	private JPanel pImg;
	private JLabel lblImg;
	private JLabel lblNewLabel;
	private JPanel pWest;
	private JPanel pcNorth;
	private JLabel lblCust;
	private JLabel lblAuth;
	private JPanel panel;
	private JLabel lblNewLabel_1;
	private JPanel panel_1;
	private JPanel panel_2;
	private JPanel panel_3;
	private JPanel panel_4;
	private JLabel lblNewLabel_2;
	private JPanel pcCenter;
	private JPanel panel_5;
	private JPanel panel_6;
	private JButton btnNewButton;
	private JButton btnNewButton_1;
	private JScrollPane scrollPane;
	private JTable table;
	private JTextField textField;
	private JLabel lblNewLabel_3;
	private DlgDeposit dlgDeposit;
	private DlgWithdraw dlgWithdraw;
	private JLabel label;
	private JLabel label_1;
	private JLabel label_2;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					CustomerDWSearchFrame frame = new CustomerDWSearchFrame();
					UIManager.setLookAndFeel("com.jtattoo.plaf.smart.SmartLookAndFeel");
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public CustomerDWSearchFrame() {
		initialize();
	}
	private void initialize() {
		dlgDeposit = new DlgDeposit();
		dlgWithdraw = new DlgWithdraw();
		setTitle("YN Bank 직원 프로그램");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 800, 500);
		contentPane = new JPanel();
		contentPane.setLayout(new BorderLayout(0, 0));
		setContentPane(contentPane);
		
		pNorth = new JPanel();
		contentPane.add(pNorth, BorderLayout.NORTH);
		pNorth.setLayout(new GridLayout(0, 4, 0, 0));
		
		pImg = new JPanel();
		pImg.setBackground(new Color(18, 66, 43));
		pNorth.add(pImg);
		pImg.setLayout(new BorderLayout(0, 0));
		
		lblImg = new JLabel("");
		lblImg.setIcon(new ImageIcon("D:\\workspace_gradle\\yi_java3st_2team\\images\\logo.png"));
		lblImg.setBackground(new Color(18, 66, 43));
		pImg.add(lblImg, BorderLayout.CENTER);
		
		pEmployee = new JPanel();
		pNorth.add(pEmployee);
		pEmployee.setLayout(new BorderLayout(0, 0));
		pEmployee.setBackground(new Color(18,66,43));
		
		lblNewLabel = new JLabel("사원");
		lblNewLabel.setForeground(Color.white);
		lblNewLabel.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		lblNewLabel.setHorizontalAlignment(SwingConstants.CENTER);
		pEmployee.add(lblNewLabel, BorderLayout.SOUTH);
		
		pCust = new JPanel();
		pNorth.add(pCust);
		pCust.setLayout(new BorderLayout(0, 0));
		pCust.setBackground(new Color(18,66,43));
		
		lblCust = new JLabel("고객정보");
		lblCust.setHorizontalAlignment(SwingConstants.CENTER);
		lblCust.setForeground(new Color(254,208,64));
		lblCust.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		pCust.add(lblCust, BorderLayout.SOUTH);
		
		pEmpAuth = new JPanel();
		pNorth.add(pEmpAuth);
		pEmpAuth.setLayout(new BorderLayout(0, 0));
		pEmpAuth.setBackground(new Color(18,66,43));
		
		lblAuth = new JLabel("사원권한");
		lblAuth.setHorizontalAlignment(SwingConstants.CENTER);
		lblAuth.setForeground(Color.WHITE);
		lblAuth.setFont(new Font("맑은 고딕", Font.BOLD, 30));
		pEmpAuth.add(lblAuth, BorderLayout.SOUTH);
		
		pCenter = new JPanel();
		pCenter.setBorder(new EmptyBorder(20, 20, 20, 20));
		pCenter.setForeground(new Color(255, 255, 255));
		contentPane.add(pCenter, BorderLayout.CENTER);
		pCenter.setLayout(new BorderLayout(0, 0));
		
		pcNorth = new JPanel();
		pcNorth.setBorder(new EmptyBorder(20, 20, 20, 20));
		pCenter.add(pcNorth, BorderLayout.NORTH);
		pcNorth.setLayout(new GridLayout(0, 2, 10, 10));
		
		lblNewLabel_3 = new JLabel("고객명 입력");
		lblNewLabel_3.setBorder(new EmptyBorder(10, 10, 10, 10));
		lblNewLabel_3.setBackground(new Color(18,66,43));
		lblNewLabel_3.setForeground(Color.WHITE);
		lblNewLabel_3.setOpaque(true);
		lblNewLabel_3.setFont(new Font("맑은 고딕", Font.PLAIN, 20));
		lblNewLabel_3.setHorizontalAlignment(SwingConstants.CENTER);
		pcNorth.add(lblNewLabel_3);
		
		textField = new JTextField();
		textField.setBorder(new EmptyBorder(10, 10, 10, 10));
		textField.setFont(new Font("맑은 고딕", Font.PLAIN, 20));
		pcNorth.add(textField);
		textField.setColumns(10);
		
		pcCenter = new JPanel();
		pCenter.add(pcCenter, BorderLayout.CENTER);
		pcCenter.setLayout(new BorderLayout(0, 0));
		
		panel_5 = new JPanel();
		FlowLayout flowLayout = (FlowLayout) panel_5.getLayout();
		flowLayout.setHgap(40);
		pcCenter.add(panel_5, BorderLayout.NORTH);
		
		btnNewButton = new JButton("조회");
		btnNewButton.setFont(new Font("맑은 고딕", Font.PLAIN, 20));
		panel_5.add(btnNewButton);
		
		btnNewButton_1 = new JButton("취소");
		btnNewButton_1.setFont(new Font("맑은 고딕", Font.PLAIN, 20));
		panel_5.add(btnNewButton_1);
		
		panel_6 = new JPanel();
		pcCenter.add(panel_6, BorderLayout.CENTER);
		panel_6.setLayout(new BorderLayout(0, 0));
		
		scrollPane = new JScrollPane();
		panel_6.add(scrollPane);
		
		table = new JTable();
		DefaultTableModel model = new DefaultTableModel(
				new Object[][] {
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null},
					{null,null,null,null,null}
				},
				new String[] {
					"고객명","입출금 구분","금액","잔액","일시"
				}
		);
		table.setModel(model);
		scrollPane.setViewportView(table);
		TableColumnModel cModel = table.getColumnModel();
		for(int i=0;i<cModel.getColumnCount();i++) {
			cModel.getColumn(i).setPreferredWidth(250);
		}
		
		pWest = new JPanel();
		contentPane.add(pWest, BorderLayout.WEST);
		pWest.setLayout(new GridLayout(5, 0, 0, 0));
		
		panel = new JPanel();
		pWest.add(panel);
		panel.setLayout(new BorderLayout(0, 0));
		panel.setBackground(new Color(18,66,43));
		
		lblNewLabel_1 = new JLabel("고객 개인정보");
		lblNewLabel_1.setForeground(Color.white);
		lblNewLabel_1.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lblNewLabel_1.setBackground(new Color(18,66,43));
		lblNewLabel_1.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblNewLabel_1);
		
		panel_1 = new JPanel();
		pWest.add(panel_1);
		panel_1.setLayout(new BorderLayout(0, 0));
		panel_1.setBackground(new Color(18,66,43));
		
		lblNewLabel_2 = new JLabel("고객 통계조회");
		lblNewLabel_2.setForeground(Color.WHITE);
		lblNewLabel_2.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		lblNewLabel_2.setBackground(new Color(18,66,43));
		panel_1.add(lblNewLabel_2, BorderLayout.CENTER);
		
		panel_2 = new JPanel();
		panel_2.setBackground(new Color(18,66,43));
		pWest.add(panel_2);
		panel_2.setLayout(new BorderLayout(0, 0));
		
		label = new JLabel("고객 상품관리");
		label.setForeground(Color.WHITE);
		label.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		label.setBackground(new Color(18, 66, 43));
		panel_2.add(label, BorderLayout.CENTER);
		
		panel_3 = new JPanel();
		panel_3.setBackground(new Color(18,66,43));
		pWest.add(panel_3);
		panel_3.setLayout(new BorderLayout(0, 0));
		
		label_1 = new JLabel("입출금 관리");
		label_1.setHorizontalAlignment(SwingConstants.CENTER);
		label_1.setForeground(new Color(254,208,64));
		label_1.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		label_1.setBackground(new Color(18, 66, 43));
		panel_3.add(label_1, BorderLayout.CENTER);
		
		panel_4 = new JPanel();
		panel_4.setBackground(new Color(18,66,43));
		pWest.add(panel_4);
		panel_4.setLayout(new BorderLayout(0, 0));
		
		label_2 = new JLabel("은행 업무 관리");
		label_2.setHorizontalAlignment(SwingConstants.CENTER);
		label_2.setForeground(Color.WHITE);
		label_2.setFont(new Font("맑은 고딕", Font.BOLD, 20));
		label_2.setBackground(new Color(18, 66, 43));
		panel_4.add(label_2, BorderLayout.CENTER);
		JPopupMenu popMenu = new JPopupMenu();
		JMenuItem deposit = new JMenuItem("입금");
		JMenuItem withdraw = new JMenuItem("출금");
		ActionListener popListener = new ActionListener() {	
			@Override
			public void actionPerformed(ActionEvent e) {
				if(e.getActionCommand().equals("입금 ")) {
					dlgDeposit.setTitle("고객 " + e.getActionCommand());
					dlgDeposit.setModal(true);
					dlgDeposit.setVisible(true);
				}
				else if(e.getActionCommand().equals("출금")) {
					dlgWithdraw.setTitle("고객 " + e.getActionCommand());
					dlgWithdraw.setModal(true);
					dlgWithdraw.setVisible(true);
				}
			}
		};
		deposit.addActionListener(popListener);
		withdraw.addActionListener(popListener);
		popMenu.add(deposit);
		popMenu.add(withdraw);
		table.setComponentPopupMenu(popMenu);
		scrollPane.setComponentPopupMenu(popMenu);
		
	}

}
