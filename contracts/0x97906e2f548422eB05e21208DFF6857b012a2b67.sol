contract main {




// =====================  Runtime code  =====================


const name = 32, 32, 0xe286932053656520436f6465204f662054686520436f6e747261637420e28693

const symbol = ''


address stor0;
uint256 index;

function index() {
    return index
}

function _fallback() payable {
  stop
}

function resetIndex(uint256 arg1) {
    require msg.sender == stor0
    index = arg1
}

function withdrawBalance() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function massSending(address[] arg1) {
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        call address(cd[((32 * idx) + arg1 + 36)]) with:
           value 777 wei
             gas 0 wei
        mem[96] = 777
        emit Transfer(777, 0, address(cd[((32 * idx) + arg1 + 36)]));
        idx = idx + 1
        continue 
}



}
