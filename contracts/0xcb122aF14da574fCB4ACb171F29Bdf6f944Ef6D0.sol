contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[3208 len 32]
    stor2 = code.data[3240 len 32]
    return code.data[155 len 3053]
}



// =====================  Runtime code  =====================


address insurerAddress;
address owner;
uint256 sub_8cfd3e40;
array of struct sub_2f724394;
uint256 counter;

function sub_2f724394(?) payable {
    mem[224] = sub_2f724394[arg1][1].field_0
    idx = 224
    s = 0
    while sub_2f724394[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_2f724394[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_2f724394[arg1][1].length + (floor32(sub_2f724394[arg1][1].length - 1) + -sub_2f724394[arg1][1].length + 32 % 32) + 224] = sub_2f724394[arg1][2].length
    mem[sub_2f724394[arg1][1].length + (floor32(sub_2f724394[arg1][1].length - 1) + -sub_2f724394[arg1][1].length + 32 % 32) + 256] = sub_2f724394[arg1][2].field_0
    idx = sub_2f724394[arg1][1].length + (floor32(sub_2f724394[arg1][1].length - 1) + -sub_2f724394[arg1][1].length + 32 % 32) + 256
    s = 0
    while sub_2f724394[arg1][1].length + (floor32(sub_2f724394[arg1][1].length - 1) + -sub_2f724394[arg1][1].length + 32 % 32) + sub_2f724394[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = sub_2f724394[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_2f724394[arg1].field_0, 
           Array(len=sub_2f724394[arg1][1].length, data=mem[224 len sub_2f724394[arg1][1].length + (floor32(sub_2f724394[arg1][1].length - 1) + -sub_2f724394[arg1][1].length + 32 % 32) + sub_2f724394[arg1][2].length + (floor32(sub_2f724394[arg1][2].length - 1) + -sub_2f724394[arg1][2].length + 32 % 32) + 32]),
           sub_2f724394[arg1][1].length + (floor32(sub_2f724394[arg1][1].length - 1) + -sub_2f724394[arg1][1].length + 32 % 32) + 128
}

function counter() payable {
    return counter
}

function sub_8cfd3e40(?) payable {
    return sub_8cfd3e40
}

function owner() payable {
    return owner
}

function insurer() payable {
    return insurerAddress
}

function kill() payable {
    if msg.sender:
        if msg.sender == owner:
            selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_ef4eb393(?) payable {
    if not msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = Mask(112, 72, 'only owner can add good') >> 72, mem[ceil32(arg1.length) + ceil32(arg2.length) + 503 len 9]
        return Array(len=23, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 480])
    if owner != msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = Mask(112, 72, 'only owner can add good') >> 72, mem[ceil32(arg1.length) + ceil32(arg2.length) + 503 len 9]
        return Array(len=23, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 480])
    sub_2f724394[stor4].field_0 = arg3
    sub_2f724394[stor4][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_2f724394[stor4][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    counter++
    emit 0xc8da22ed: owner
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 576] = Mask(64, 96, 'good is now insured!') >> 96, mem[ceil32(arg1.length) + ceil32(arg2.length) + 596 len 12]
    return Array(len=20, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 576])
}

function sub_db202785(?) payable {
    if not msg.sender:
        mem[256] = Mask(160, 48, 'only owner can remove good') >> 48, mem[282 len 6]
        return Array(len=26, data=mem[256])
    if owner != msg.sender:
        mem[256] = Mask(160, 48, 'only owner can remove good') >> 48, mem[282 len 6]
        return Array(len=26, data=mem[256])
    if sub_2f724394[arg1].field_0 <= 0:
        mem[256] = mem[279 len 9]
        return Array(len=9, data=mem[256])
    emit 0xc8da22ed: owner
    sub_2f724394[arg1].field_0 = 0
    sub_2f724394[arg1].field_256 = 0
    if 31 < sub_2f724394[arg1][1].length:
        idx = 0
        while sub_2f724394[arg1][1].length + 31 / 32 > idx:
            sub_2f724394[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_2f724394[arg1].field_512 = 0
    if 31 < sub_2f724394[arg1][2].length:
        idx = 0
        while sub_2f724394[arg1][2].length + 31 / 32 > idx:
            sub_2f724394[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    mem[256] = mem[276 len 12]
    return Array(len=12, data=mem[256])
}



}
