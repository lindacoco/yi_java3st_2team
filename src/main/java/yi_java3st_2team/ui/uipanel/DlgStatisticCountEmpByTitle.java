package yi_java3st_2team.ui.uipanel;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import javafx.application.Platform;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.embed.swing.JFXPanel;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.chart.BarChart;
import javafx.scene.chart.CategoryAxis;
import javafx.scene.chart.NumberAxis;
import javafx.scene.chart.PieChart;
import javafx.scene.chart.XYChart;
import javafx.scene.chart.XYChart.Series;
import yi_java3st_2team.dto.Employee;
import yi_java3st_2team.ui.service.EmployeeUIService;

@SuppressWarnings("serial")
public class DlgStatisticCountEmpByTitle extends JDialog {
	private static PieChart pieChart;
	private static EmployeeUIService service = new EmployeeUIService();

	private final JPanel contentPanel = new JPanel();
	private static double numOfCS;
	private static double numOfHR;
	private static int totalnum;
	private JButton okButton;
	private static DlgStatisticCountEmpByTitle dialog;

	
	private BarChart<String, Number> barChart;
	private EmpStaticPanel empStaticPanel;
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		

     }

	/**
	 * Create the dialog.
	 */
	public DlgStatisticCountEmpByTitle() {
		
		    totalnum = service.countAllEmpNum();
			numOfHR = service.countMemberByDepartment(1);			
			numOfCS = service.countMemberByDepartment(2);
		
		setBounds(700,50,600,400);
		
		final JFXPanel fxPanel = new JFXPanel();
		
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setLayout(new FlowLayout());
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		contentPanel.add(fxPanel, BorderLayout.CENTER); 
		
		
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		
		Platform.runLater(() -> initFX(fxPanel));


	}
	
	private void initFX(JFXPanel fxPanel) {
		Scene scene = createScene();
		fxPanel.setScene(scene);
	}

	private Scene createScene() {
		Group root = new Group();
		Scene scene = new Scene(root);
		root.setAutoSizeChildren(true);
		
		
		
		String subject = "Employee Pie Chart";
		String totalEmp = "전체 직원 수 : ";
		
		//막 대형 차트의 X 축과 Y 축을 정의하고 레이블을 설정
				CategoryAxis xAxis = new CategoryAxis();
				xAxis.setLabel("사원 수");

				NumberAxis yAxis = new NumberAxis();
				yAxis.setLabel("부서");
				yAxis.setAutoRanging(false); // 눈금단위 조절하기 위해 
				yAxis.setUpperBound(totalnum);
				yAxis.setTickUnit(1);

				barChart = new BarChart<>(xAxis, yAxis);
				barChart.setTitle("직급별 직원 수");
				
				barChart.setPrefSize(500, 250);
				barChart.setData(getChartData());
				
				root.getChildren().add(barChart);

				return scene;
	}
	
	public XYChart.Series<String, Number> getChartData(Employee emp) {
		XYChart.Series<String, Number> dataSeries = new Series<String, Number>();
		dataSeries.setName(emp.getEmpTitle());
		dataSeries.getData().add(new XYChart.Data<>("지점장", Math.ceil(service.countMemberByTitle("지점장"))));
		dataSeries.getData().add(new XYChart.Data<>("부지점장", Math.ceil(service.countMemberByTitle("부지점장"))));
		dataSeries.getData().add(new XYChart.Data<>("부장", Math.ceil(service.countMemberByTitle("부장"))));
		dataSeries.getData().add(new XYChart.Data<>("과장", Math.ceil(service.countMemberByTitle("과장"))));
		dataSeries.getData().add(new XYChart.Data<>("차장", Math.ceil(service.countMemberByTitle("차장"))));
		dataSeries.getData().add(new XYChart.Data<>("대리", Math.ceil(service.countMemberByTitle("대리"))));
		dataSeries.getData().add(new XYChart.Data<>("사원", Math.ceil(service.countMemberByTitle("사원"))));
		dataSeries.getData().add(new XYChart.Data<>("etc", Math.ceil(service.countMemberByTitle("test"))));
		
		return dataSeries;
		
		//emp.getKorScore())
	}
	
	private ObservableList<XYChart.Series<String, Number>> getChartData() {
		ObservableList<XYChart.Series<String, Number>> list = FXCollections.observableArrayList();
		Employee std = new Employee("A001","나인사","부장","HR",6000000,"010-2222-2222","HRid1");
		Employee std2 = new Employee("A002","나","과장","HR",7000000,"010-2222-2222","HRid1");
		
		list.add(getChartData(std));
		list.add(getChartData(std2));
		
		return list;
	}
	
}
