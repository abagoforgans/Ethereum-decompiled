contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(stor0)] = 255
    return code.data[164 len 7474]
}



// =====================  Runtime code  =====================


#
#  - getUser(address arg1)
#
address stor0;
mapping of uint8 stor1;
mapping of struct email;
mapping of address wallet;

function getEmail(address arg1) {
    return email[address(arg1)][0 len email[address(arg1)].length].field_0
}

function getWallet(string arg1) {
    require 2 == Mask(1, 1, uint8(stor1[address(msg.sender)]))
    return address(wallet[arg1[all]])
}

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function sub_1560ad10(?) {
    require msg.sender == stor0
    if arg1 != stor0:
        uint256(stor1[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor1[address(arg1)]))
}

function sendEtherToOwner() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_7aaf0ad1(?) {
    require 8 == Mask(1, 3, uint8(stor1[address(msg.sender)]))
    if not email[address(arg1)].field_768:
        return 1
    email[address(arg1)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    return 0
}

function sub_b349f676(?) {
    require 8 == Mask(1, 3, uint8(stor1[address(msg.sender)]))
    if not email[address(arg1)].field_768:
        return 1
    email[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    uint256(wallet[arg2[all]]) = arg1 or Mask(96, 160, uint256(wallet[arg2[all]]))
    return 0
}

function sub_99379fb6(?) {
    require 8 == Mask(1, 3, uint8(stor1[address(msg.sender)]))
    email[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    email[address(arg1)].field_256 = arg3
    if email[address(arg1)].field_768:
        email[address(arg1)].field_768 = arg5 or Mask(248, 8, email[address(arg1)].field_768)
        email[address(arg1)][4][].field_0 = Array(len=arg6.length, data=arg6[all])
        email[address(arg1)].field_1280 = arg7 or Mask(248, 8, email[address(arg1)].field_1280)
        return 0
    email[address(arg1)][2][].field_0 = Array(len=arg4.length, data=arg4[all])
    email[address(arg1)].field_768 = 1
    email[address(arg1)][4][].field_0 = Array(len=arg6.length, data=arg6[all])
    email[address(arg1)].field_1280 = arg7 or Mask(248, 8, email[address(arg1)].field_1280)
    return 1
}

function _fallback() {
    if email[address(msg.sender)].field_768:
        email[address(msg.sender)].field_256 += msg.value
        email[address(msg.sender)].field_512 = (2 * calldata.size) + 1
        s = 0
        idx = 0
        while calldata.size > idx:
            email[address(msg.sender)][s + 2].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, calldata.size + 31) >> 5
        while email[address(msg.sender)][2].length + 31 / 32 > idx:
            email[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        email[address(msg.sender)].field_0 = 0
        email[address(msg.sender)].field_1 = 0
        email[address(msg.sender)].field_8 = calldata.size / 256
        idx = 0
        while email[address(msg.sender)].length + 31 / 32 > idx:
            email[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        email[address(msg.sender)].field_256 = msg.value
        email[address(msg.sender)][2][].field_0 = Array(len=calldata.size, data=call.data[0 len calldata.size])
        email[address(msg.sender)].field_768 = 1
        email[address(msg.sender)].field_1024 = 0
        email[address(msg.sender)].field_1025 = 0
        email[address(msg.sender)].field_1032 = mem[ceil32(calldata.size) + 384 len 31]
        idx = 0
        while email[address(msg.sender)][4].length + 31 / 32 > idx:
            email[address(msg.sender)][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
        email[address(msg.sender)].field_1280 = 0
        email[address(msg.sender)].field_1536 = 0
}

function sub_bf806d3e(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    if not email[address(msg.sender)].field_1280:
        mem[32] = 2
        mem[224] = email[address(msg.sender)].length
        mem[256] = email[address(msg.sender)].field_0
        idx = 256
        s = 0
        while email[address(msg.sender)].length + 224 > idx:
            mem[idx + 32] = email[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(email[address(msg.sender)].length) + 256] = 64
        mem[ceil32(email[address(msg.sender)].length) + 320] = email[address(msg.sender)].length
        mem[ceil32(email[address(msg.sender)].length) + 352 len email[address(msg.sender)].length] = mem[256 len email[address(msg.sender)].length]
        if not email[address(msg.sender)].length % 32:
            return 64, 
                   email[address(msg.sender)].length + 96,
                   email[address(msg.sender)].length,
                   mem[256 len email[address(msg.sender)].length],
                   0
        mem[floor32(email[address(msg.sender)].length) + ceil32(email[address(msg.sender)].length) + 352] = mem[floor32(email[address(msg.sender)].length) + ceil32(email[address(msg.sender)].length) + -email[address(msg.sender)].length % 32 + 384 len email[address(msg.sender)].length % 32]
        return 64, 
               floor32(email[address(msg.sender)].length) + 128,
               email[address(msg.sender)].length,
               mem[ceil32(email[address(msg.sender)].length) + 352 len floor32(email[address(msg.sender)].length) + 32],
               0
    mem[224] = email[address(msg.sender)][4].length
    mem[256] = email[address(msg.sender)][4].field_0
    idx = 256
    s = 0
    while email[address(msg.sender)][4].length + 224 > idx:
        mem[idx + 32] = email[address(msg.sender)][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 2
    mem[64] = ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 288
    mem[ceil32(email[address(msg.sender)][4].length) + 256] = email[address(msg.sender)].length
    mem[0] = sha3(address(msg.sender), 2)
    mem[ceil32(email[address(msg.sender)][4].length) + 288] = email[address(msg.sender)].field_0
    idx = ceil32(email[address(msg.sender)][4].length) + 288
    s = 0
    while ceil32(email[address(msg.sender)][4].length) + email[address(msg.sender)].length + 256 > idx:
        mem[idx + 32] = email[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 288] = 64
    mem[ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 352] = email[address(msg.sender)].length
    mem[ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 384 len email[address(msg.sender)].length] = mem[ceil32(email[address(msg.sender)][4].length) + 288 len email[address(msg.sender)].length]
    mem[ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 320] = email[address(msg.sender)].length + 96
    mem[email[address(msg.sender)].length + ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 384] = email[address(msg.sender)][4].length
    mem[email[address(msg.sender)].length + ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 416 len email[address(msg.sender)][4].length] = mem[256 len email[address(msg.sender)][4].length]
    if not email[address(msg.sender)][4].length % 32:
        return Array(len=email[address(msg.sender)].length, data=mem[ceil32(email[address(msg.sender)][4].length) + 288 len email[address(msg.sender)].length], email[address(msg.sender)][4].length, mem[256 len email[address(msg.sender)][4].length]), 
               email[address(msg.sender)].length + 96
    mem[floor32(email[address(msg.sender)][4].length) + email[address(msg.sender)].length + ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + 416] = mem[floor32(email[address(msg.sender)][4].length) + email[address(msg.sender)].length + ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + -email[address(msg.sender)][4].length % 32 + 448 len email[address(msg.sender)][4].length % 32]
    return Array(len=email[address(msg.sender)].length, data=mem[ceil32(email[address(msg.sender)][4].length) + 288 len email[address(msg.sender)].length], email[address(msg.sender)][4].length, mem[ceil32(email[address(msg.sender)][4].length) + ceil32(email[address(msg.sender)].length) + email[address(msg.sender)].length + 416 len floor32(email[address(msg.sender)][4].length) + 32]), 
           email[address(msg.sender)].length + 96
}



}
