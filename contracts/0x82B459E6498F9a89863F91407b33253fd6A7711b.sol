contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = 255
    return code.data[68 len 4418]
}



// =====================  Runtime code  =====================


#
#  - sub_bf806d3e(?)
#
address stor0;
mapping of uint256 stor1;
mapping of struct email;
mapping of address wallet;

function getEmail(address arg1) payable {
    return email[address(arg1)][0 len email[address(arg1)].length].field_0
}

function getWallet(string arg1) payable {
    require Mask(1, 1, stor1[address(msg.sender)]) == 2
    return address(wallet[arg1[all]])
}

function kill() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function sub_1560ad10(?) payable {
    require msg.sender == stor0
    if stor0 != arg1:
        stor1[address(arg1)] = arg2 or Mask(248, 8, stor1[address(arg1)])
}

function sendEtherToOwner() payable {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
    return bool(ext_call.success)
}

function sub_7aaf0ad1(?) payable {
    require Mask(1, 3, stor1[address(msg.sender)]) == 8
    if not email[address(arg1)].field_512:
        return 1
    email[address(arg1)][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    return 0
}

function sub_b349f676(?) payable {
    require Mask(1, 3, stor1[address(msg.sender)]) == 8
    if not email[address(arg1)].field_512:
        return 1
    email[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    uint256(wallet[arg2[all]]) = arg1 or Mask(96, 160, uint256(wallet[arg2[all]]))
    return 0
}

function sub_ebb2f04e(?) payable {
    require Mask(1, 3, stor1[address(msg.sender)]) == 8
    email[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    email[address(arg1)].field_256 = arg3
    if not email[address(arg1)].field_512:
        email[address(arg1)].field_512 = 1
        email[address(arg1)][3][].field_0 = Array(len=arg5.length, data=arg5[all])
        email[address(arg1)].field_1024 = arg6 or Mask(248, 8, email[address(arg1)].field_1024)
        return 1
    email[address(arg1)].field_512 = arg4 or Mask(248, 8, email[address(arg1)].field_512)
    email[address(arg1)][3][].field_0 = Array(len=arg5.length, data=arg5[all])
    email[address(arg1)].field_1024 = arg6 or Mask(248, 8, email[address(arg1)].field_1024)
    return 0
}

function _fallback() payable {
    if email[address(msg.sender)].field_512:
        email[address(msg.sender)].field_256 += msg.value
    else:
        email[address(msg.sender)].field_0 = 0
        email[address(msg.sender)].field_1 = 0
        email[address(msg.sender)].field_8 = 0
        idx = 0
        while email[address(msg.sender)].length + 31 / 32 > idx:
            email[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
        email[address(msg.sender)].field_256 = msg.value
        email[address(msg.sender)].field_512 = 1
        email[address(msg.sender)].field_768 = 0
        email[address(msg.sender)].field_769 = 0
        email[address(msg.sender)].field_776 = mem[320 len 31]
        idx = 0
        while email[address(msg.sender)][3].length + 31 / 32 > idx:
            email[address(msg.sender)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
        email[address(msg.sender)].field_1024 = 0
        email[address(msg.sender)].field_1280 = 0
}

function getUser(address arg1) payable {
    mem[96] = 0
    mem[128] = 0
    require Mask(1, 3, stor1[address(msg.sender)]) == 8
    mem[32] = 2
    mem[160] = email[address(arg1)].length
    mem[192] = email[address(arg1)].field_0
    idx = 192
    s = 0
    while email[address(arg1)].length + 160 > idx:
        mem[idx + 32] = email[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 224
    mem[ceil32(email[address(arg1)].length) + 192] = email[address(arg1)][3].length
    mem[0] = sha3(address(arg1), 2) + 3
    mem[ceil32(email[address(arg1)].length) + 224] = email[address(arg1)][3].field_0
    idx = ceil32(email[address(arg1)].length) + 224
    s = 0
    while ceil32(email[address(arg1)].length) + email[address(arg1)][3].length + 192 > idx:
        mem[idx + 32] = email[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 256] = email[address(arg1)].field_256
    mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 320] = bool(email[address(arg1)].field_1024)
    mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 224] = 128
    mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 352] = email[address(arg1)].length
    mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 384 len email[address(arg1)].length] = mem[192 len email[address(arg1)].length]
    mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 288] = email[address(arg1)].length + 160
    mem[email[address(arg1)].length + ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 384] = email[address(arg1)][3].length
    mem[email[address(arg1)].length + ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 416 len email[address(arg1)][3].length] = mem[ceil32(email[address(arg1)].length) + 224 len email[address(arg1)][3].length]
    if not email[address(arg1)][3].length % 32:
        return Array(len=email[address(arg1)].length, data=mem[192 len email[address(arg1)].length], email[address(arg1)][3].length, mem[ceil32(email[address(arg1)].length) + 224 len email[address(arg1)][3].length]), 
               email[address(arg1)].field_256,
               email[address(arg1)].length + 160,
               bool(email[address(arg1)].field_1024)
    mem[floor32(email[address(arg1)][3].length) + email[address(arg1)].length + ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + 416] = mem[floor32(email[address(arg1)][3].length) + email[address(arg1)].length + ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + -email[address(arg1)][3].length % 32 + 448 len email[address(arg1)][3].length % 32]
    return Array(len=email[address(arg1)].length, data=mem[192 len email[address(arg1)].length], email[address(arg1)][3].length, mem[ceil32(email[address(arg1)].length) + ceil32(email[address(arg1)][3].length) + email[address(arg1)].length + 416 len floor32(email[address(arg1)][3].length) + 32]), 
           email[address(arg1)].field_256,
           email[address(arg1)].length + 160,
           bool(email[address(arg1)].field_1024)
}



}
