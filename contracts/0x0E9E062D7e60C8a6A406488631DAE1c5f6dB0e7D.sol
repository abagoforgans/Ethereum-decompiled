contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 38 * 10^13
    stor2 = 1
    return code.data[85 len 1448]
}



// =====================  Runtime code  =====================


address owner;
uint256 costWei;
uint8 stor2;

function enabled() {
    return bool(stor2)
}

function costWei() {
    return costWei
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeCost(uint256 arg1) {
    require owner == msg.sender
    costWei = arg1
    emit UpdateCost(arg1);
}

function enableContract() {
    require owner == msg.sender
    stor2 = 1
    emit UpdateEnabled(Array(len=24, data='Texting has been enabled'));
}

function pauseContract() {
    require owner == msg.sender
    stor2 = 0
    emit UpdateEnabled(Array(len=25, data='Texting has been disabled'));
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sendText(string arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require stor2
    require msg.value >= costWei
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                emit NewText(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + 32]), arg1.length + 96);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                emit NewText(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 96);
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                emit NewText(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + 32]), arg1.length + 96);
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
                emit NewText(Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 320 len floor32(arg2.length)]), arg1.length + 96);
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            emit NewText(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg2.length + arg1.length]), arg1.length + 96);
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
            emit NewText(Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 96);
}



}
