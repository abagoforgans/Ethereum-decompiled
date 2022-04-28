contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 273]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function put() payable {
    require msg.value == 10
}

function steal() {
    require eth.balance(this.address) >= 10
    call msg.sender with:
       value 10 wei
         gas 0 wei
    require ext_call.success
}



}
