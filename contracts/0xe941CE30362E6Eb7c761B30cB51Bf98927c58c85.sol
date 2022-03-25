contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = code.data[260 len 32]
    return code.data[54 len 206]
}



// =====================  Runtime code  =====================


address oracleAddress;
uint256 value;

function value() payable {
    return value
}

function oracle() payable {
    return oracleAddress
}

function _fallback() payable {
  stop
}

function read() payable {
    call oracleAddress.'k=Ih' with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    value = ext_call.return_data[0]
}



}
