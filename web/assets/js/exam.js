/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


function handleClick(className) {
    document.getElementById('question' + className).classList.add('forcus');
}

function openResult(e) {
    e.preventDefault();
    document.querySelector('.modal').classList.add('open');
}