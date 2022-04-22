contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -1151] = code.data[1456 len -1151]
    mem[64] = -1055
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender
    return code.data[305 len 1151]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
array of uint256 data;

function data() {
    return data[0 len data.length]
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function changeData(string arg1) {
    require msg.sender == owner
    data[] = Array(len=arg1.length, data=arg1[all])
}

function transfer(uint256 arg1, address arg2) payable {
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
