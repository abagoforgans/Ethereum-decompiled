contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor6 = 25 * 10^16
    mem[128] = 'After the deadline you will rece'
    mem[160] = 'ive the next link'
    stor7.length = 99
    s = 0
    idx = 128
    while 177 > idx:
        stor7[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor7.length + 31 / 32 > idx:
        stor7[idx] = 0
        idx = idx + 1
        continue 
    mem[224] = 'I will use this field for extra '
    mem[256] = 'comunications if needed'
    stor8.length = 111
    s = 0
    idx = 224
    while 279 > idx:
        stor8[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor8.length + 31 / 32 > idx:
        stor8[idx] = 0
        idx = idx + 1
        continue 
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[535 len 3477]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
uint256 stor5;
uint256 stor6;
array of struct stor7;
array of uint256 sub_12e7d955;
uint8 stor9;

function isValidated(address arg1) {
    return bool(stor4[address(arg1)])
}

function sub_12e7d955(?) {
    return sub_12e7d955[0 len sub_12e7d955.length]
}

function sub_205c2811(?) {
    require msg.sender == stor0
    stor9 = 1
}

function paymentOf(address arg1) {
    return (stor1[address(arg1)] / 10^18)
}

function sub_83789e5a(?) {
    require msg.sender == stor0
    sub_12e7d955[] = Array(len=arg1.length, data=arg1[all])
}

function sub_309118e4(?) {
    require msg.sender == stor0
    stor2[address(arg1)] = arg2
    stor3[address(arg1)] = arg3
}

function setData(string arg1) {
    require msg.sender == stor0
    stor7[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function _fallback() payable {
    require not stor9
    require msg.value >= stor6
    stor1[address(msg.sender)] += msg.value
    stor5 += msg.value
    emit Payment(msg.sender, block.timestamp, msg.value);
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    stor5 += -1 * 10^18 * arg1
    call stor0 with:
       value 10^18 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function data() {
    if stor1[address(msg.sender)] < stor6:
        return 'Unauthorized '
    mem[160] = uint256(stor7.field_0)
    idx = 160
    s = 0
    while stor7.length + 128 > idx:
        mem[idx + 32] = stor7[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor7.length, data=mem[160 len stor7.length])
}

function validate() {
    if stor2[address(msg.sender)] > block.timestamp:
        stor4[address(msg.sender)] = 0
        emit 0xd9abd59f: msg.sender, block.timestamp, 0
    else:
        if block.timestamp > stor3[address(msg.sender)]:
            stor4[address(msg.sender)] = 0
            emit 0xd9abd59f: msg.sender, block.timestamp, 0
        else:
            stor4[address(msg.sender)] = 1
            emit 0xd9abd59f: msg.sender, block.timestamp, 1
}



}
