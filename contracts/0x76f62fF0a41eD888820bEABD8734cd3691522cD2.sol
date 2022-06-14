contract main {




// =====================  Runtime code  =====================


address owner;
address sub_10fe6584Address;
address sub_d1bd1d6eAddress;
mapping of address sub_7db65b17;
mapping of uint8 sub_0b0db12d;
mapping of address sub_d974081f;
mapping of address sub_78914887;
mapping of address sub_9801354f;
array of address sub_4cf667d9;
uint256 sub_b00a6d92;
uint256 sub_2881178b;
mapping of address stor11;
array of address stor12;
mapping of uint256 sub_d266770c;

function sub_0b0db12d(?) {
    return sub_0b0db12d[arg1]
}

function sub_10fe6584(?) {
    return sub_10fe6584Address
}

function sub_2881178b(?) {
    return sub_2881178b
}

function sub_4cf667d9(?) {
    require arg1 < sub_4cf667d9.length
    return sub_4cf667d9[arg1]
}

function sub_78914887(?) {
    return sub_78914887[arg1]
}

function sub_798cc26a(?) {
    return owner
}

function sub_7db65b17(?) {
    return sub_7db65b17[arg1 << 248]
}

function sub_841586e0(?) {
    return sub_4cf667d9.length
}

function getOwner() {
    return owner
}

function sub_9801354f(?) {
    return address(sub_9801354f[arg1])
}

function sub_b00a6d92(?) {
    return sub_b00a6d92
}

function sub_b92e7207(?) {
    return sub_7db65b17[arg1]
}

function sub_d1bd1d6e(?) {
    return sub_d1bd1d6eAddress
}

function sub_d266770c(?) {
    return sub_d266770c[arg1 << 224]
}

function sub_d974081f(?) {
    return sub_d974081f[arg1 << 248]
}

function sub_edba7f8f(?) {
    return sub_d974081f[arg1]
}

function _fallback() payable {
  stop
}

function sub_2fe6a1e6(?) payable {
  stop
}

function sub_5fecf62c(?) payable {
  stop
}

function sub_f7e17fe9(?) payable {
    sub_2881178b += msg.value
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, '1'
    owner = arg1
}

function sub_2d8815c8(?) payable {
    call sub_d1bd1d6eAddress with:
       value msg.value / 2 wei
         gas gas_remaining wei
    sub_b00a6d92 += msg.value / 2
    sub_2881178b += msg.value / 2
}

function sub_df41b67c(?) {
    if sub_0b0db12d[msg.sender] <= 0:
        revert with 0, '9'
    if arg2:
        require ext_code.size(arg1)
        call arg1.0x5b7ce8c9 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_e1d1cb13(?) {
    if owner != msg.sender:
        revert with 0, '1'
    require ext_code.size(arg1)
    call arg1.0xca6eb973 with:
         gas gas_remaining wei
        args 0, arg2, 96, (32 * arg3.length) + 128, arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 < 0:
        sub_2881178b -= arg2
}

function sub_33d45905(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        revert with 0, '1'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 156 len 4]
        mem[32] = 13
        sub_d266770c[mem[(32 * idx) + 156 len 4]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_ea2143c2(?) {
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if 0 >= stor12.length:
        revert with 0, '8'
    if bool(s) != 1:
        revert with 0, '8'
    stor11[0][msg.sender] = arg1
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = sha3(0, 11)
        if stor11[0][stor12[idx]] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s >= 3:
        sub_10fe6584Address = arg1
}

function sub_07f67dbd(?) {
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if 0 >= stor12.length:
        revert with 0, '8'
    if bool(s) != 1:
        revert with 0, '8'
    stor11[arg1 + 510][msg.sender] = arg2
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = sha3(arg1 + 510, 11)
        if stor11[arg1 + 510][stor12[idx]] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s >= 3:
        sub_d974081f[arg1 << 248] = arg2
}

function sub_042cefc1(?) {
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = 12
        if stor12[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if 0 >= stor12.length:
        revert with 0, '8'
    if bool(s) != 1:
        revert with 0, '8'
    stor11[arg1 + 255][msg.sender] = arg2
    idx = 0
    s = 0
    while idx < stor12.length:
        mem[0] = stor12[idx]
        mem[32] = sha3(arg1 + 255, 11)
        if stor11[arg1 + 255][stor12[idx]] != arg2:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if s >= 3:
        sub_0b0db12d[stor3[arg1 << 248]] = 0
        sub_7db65b17[arg1 << 248] = arg2
        sub_0b0db12d[arg2] = arg1
}

function sub_929dd1e0(?) payable {
    if sub_78914887[msg.sender]:
        emit 0x72365943: msg.sender, sub_78914887[msg.sender], 0
        return sub_78914887[msg.sender]
    require ext_code.size(sub_10fe6584Address)
    call sub_10fe6584Address.0x8f0196d6 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_78914887[msg.sender] = address(ext_call.return_data[0])
    uint256(sub_9801354f[address(ext_call.return_data[0])]) = msg.sender or Mask(96, 160, uint256(sub_9801354f[address(ext_call.return_data[0])]))
    sub_4cf667d9.length++
    sub_4cf667d9[sub_4cf667d9.length] = address(ext_call.return_data[0])
    emit 0x72365943: msg.sender, address(ext_call.return_data[0]), 1
    return address(ext_call.return_data[0])
}



}
