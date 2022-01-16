var xValues = ['F21', 'S22', 'F22', 'S23', 'F23', 'S24', 'F24', 'S25'];
var yValues = [3.5,3.5,3.6,3.4,3.3,4.0,4.0,4.0];

// const data = {
//     labels: xValues,
//     datasets: [{
//         label: 'TEST',
//         data: yValues,
//         borderColor: '#0A509E',
//         backgroundColor: 'transparent',
//     }]
// }

// Chart.defaults.global.defaultFont = "SF Pro Display";
// // Chart.defaults.global.defaultFontColor = '#00205B';

// const config = {
//     type: 'line',
//     data: data,
//     options: {
//         legend: {display: false},
//         title: {
//             display: true,
//             text: 'TEST',
//             fontSize: 24,
//             fontColor: "#000",
//         },
//         scales: {
//             yAxes: [{
//               scaleLabel: {
//                 display: true,
//                 labelString: 'GPA',
//                 fontColor: "#000",
//                 fontSize: 16
//               },
//               gridLines: {
//                   color: "#7C7E7F",
//                   drawTicks: false,
//                   drawBorder: false
//               }
//             }],
//             xAxes: [{
//                 gridLines: {
//                     display:false
//                 }
//             }]
//           }    
//     }
// };
// const myChart = new Chart(
//     document.getElementById('semester_chart'),
//     config
// );

TESTER = document.getElementById('semester_chart');
data_groups = document.getElementById('semester_chart_data').innerText.split('-');
xValues = [];
yValues = [];
for (x of data_groups){
    xValues.push(x.split(',')[0].split('\n            \n                ')[1]);
    yValues.push(parseFloat(x.split(',')[1]));
}
var layout = {
    yaxis: {title: "GPA",
            font: {
                size: 9
            },
            range: [3,4]},
    title: "GPA by Semester",
    font: {
        family: 'SF Pro Display',
        style: 'italic',
        weight: 900,
        size: 18,
        color: '#00205B'
      },
    showlegend: false
};

var bar = {
    x: xValues,
    y: yValues,
    type: 'bar',
    marker: {
        color: '#E9A139'
    },
    name: 'GPA'
  };
var line = {
    x: xValues,
    y: yValues,
    type: 'line',
    marker: {
        color: '#44474F'
    },
    name: 'GPA'
  };

var data = [bar,line]

Plotly.newPlot( TESTER,
    data,
    layout,
    {modeBarButtonsToRemove: ['zoom2d', 'select2d', 'lasso2d', 'toggleSpikelines', 'hoverClosestCartesian', 'hoverCompareCartesian',
                                'zoomin2d', 'zoomout2d'],
    displaylogo: false});