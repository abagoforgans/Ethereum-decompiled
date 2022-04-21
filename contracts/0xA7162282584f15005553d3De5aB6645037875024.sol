contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[95 len 962]
}



// =====================  Runtime code  =====================


mapping of struct consultaProva;
address owner;

function ConsultaProva(address arg1) {
    return consultaProva[address(arg1)].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function provas(address arg1) {
    return bool(consultaProva[arg1].field_0), consultaProva[arg1].field_256
}

function GuardaProva(address arg1) {
    require msg.sender == owner
    require not consultaProva[address(arg1)].field_0
    consultaProva[address(arg1)].field_0 = 1
    consultaProva[address(arg1)].field_256 = block.number
}



}
