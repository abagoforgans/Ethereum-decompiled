contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[1090 len 32]
    return code.data[60 len 1030]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct sub_7cd7ee3d;

function sub_7cd7ee3d(?) {
    return sub_7cd7ee3d[arg1[all]].field_512
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function kill() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_46232d21(?) payable {
    if msg.value < stor1:
        return 0
    sub_7cd7ee3d[arg1[all]].field_0 = 100
    sub_7cd7ee3d[arg1[all]].field_256 = msg.sender or Mask(96, 160, sub_7cd7ee3d[arg1[all]].field_256)
    sub_7cd7ee3d[arg1[all]].field_512 = msg.value
    return 1
}

function sub_66385af5(?) {
    if owner == msg.sender:
        sub_7cd7ee3d[arg1[all]].field_0 = 0
        sub_7cd7ee3d[arg1[all]].field_256 = 0
        sub_7cd7ee3d[arg1[all]].field_512 = 0
        call msg.sender with:
           value stor1 wei
             gas 2300 * is_zero(value) wei
        return 0
    else:
        return 0
}



}
