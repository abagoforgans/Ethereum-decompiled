contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() {
    stor0 = 0xd0387b1f266da78d604446af5744bec4d0996987
    require ext_code.size(stor0)
    call stor0.0x2eccd877 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
    mem[128] = 'https://www.random.org/integers/'
    mem[160] = '?num=1&min=1&max=100&col=1&base='
    mem[192] = '10&format=plain&rnd=new'
    stor2.length = 175
    s = 0
    idx = 128
    while 215 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor2.length + 31 / 32 > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    return code.data[671 len 1313]
}



// =====================  Runtime code  =====================


address sub_0f629221Address;
address stor1;
array of struct stor2;

function sub_0f629221(?) {
    return sub_0f629221Address
}

function _fallback() payable {
    revert
}

function sub_cac95320(?) {
    require msg.sender == stor1
    emit 0x6421b27d: Array(len=arg1.length, data=arg1[all])
}

function sub_ac1147fc(?) {
    mem[128] = 'https://www.random.org/integers/'
    mem[160] = '?num=1&min=1&max=100&col=1&base='
    mem[192] = '10&format=plain&rnd=new'
    stor2.length = 175
    s = 0
    idx = 128
    while 215 > idx:
        stor2[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[420] = uint256(stor2.field_0)
    idx = 420
    s = 0
    while stor2.length + 420 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 420] = 4
    require ext_code.size(sub_0f629221Address)
    call sub_0f629221Address.0x3d81e455 with:
         gas gas_remaining - 710 wei
        args 160, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 256, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320, address(this.address), stor2.length, mem[420 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32], 'POST', 0, mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 516], 3, 'all'
    require ext_call.success
}



}
