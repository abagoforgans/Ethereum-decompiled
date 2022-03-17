contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[63 len 3191]
}



// =====================  Runtime code  =====================


address sub_71164d26Address;
uint256 stor0;
address sub_be60040eAddress;
uint256 stor1;
address sub_aaabd6b0Address;
uint256 stor2;
uint64 stor3;
uint64 sub_12d3b72a; offset 160
uint128 stor3; offset 160
address sub_5409b77aAddress;
uint256 stor3;
mapping of struct sub_f0f0b7c0;
mapping of uint256 sub_97c052f1;

function sub_12d3b72a(?) payable {
    return sub_12d3b72a
}

function sub_5409b77a(?) payable {
    return sub_5409b77aAddress
}

function sub_71164d26(?) payable {
    return address(sub_71164d26Address)
}

function sub_97c052f1(?) payable {
    return sub_97c052f1[arg1]
}

function sub_aaabd6b0(?) payable {
    return address(sub_aaabd6b0Address)
}

function sub_be60040e(?) payable {
    return address(sub_be60040eAddress)
}

function sub_f0f0b7c0(?) payable {
    mem[288] = sub_f0f0b7c0[arg1][3].field_0
    idx = 288
    s = 0
    while sub_f0f0b7c0[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = sub_f0f0b7c0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_f0f0b7c0[arg1].field_0, 
           sub_f0f0b7c0[arg1].field_0,
           sub_f0f0b7c0[arg1].field_256,
           sub_f0f0b7c0[arg1].field_512,
           Array(len=sub_f0f0b7c0[arg1][3].length, data=mem[288 len sub_f0f0b7c0[arg1][3].length + (floor32(sub_f0f0b7c0[arg1][3].length - 1) + -sub_f0f0b7c0[arg1][3].length + 32 % 32)])
}

function selfDestruct() payable {
    if address(sub_aaabd6b0Address) != msg.sender:
    selfdestruct(address(sub_aaabd6b0Address))
}

function _fallback() payable {
  stop
}

function sub_6c193ee0(?) payable {
    return sha3(arg1[all])
}

function sub_b8055bd2(?) payable {
    if msg.sender == address(sub_be60040eAddress):
        if sub_f0f0b7c0[arg1[all]].field_256:
            sub_f0f0b7c0[arg1[all]].field_128 = uint128(sub_f0f0b7c0[arg1[all]].field_128 + arg2)
}

function sub_a91c2a93(?) payable {
    if msg.sender == address(sub_aaabd6b0Address):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
        uint256(stor2) = arg4 or Mask(96, 160, uint256(stor2))
        uint256(stor3.field_0) = arg3 or Mask(96, 160, uint256(stor3.field_0))
}

function addString(string arg1) payable {
    if sub_f0f0b7c0[arg1[all]].field_256:
        return 0
    sub_f0f0b7c0[arg1[all]].field_0 = sub_f0f0b7c0[arg1[all]].field_0
    sub_f0f0b7c0[arg1[all]].field_512 = block.timestamp
    sub_f0f0b7c0[arg1[all]][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_f0f0b7c0[arg1[all]].field_256 = 1
    sub_f0f0b7c0[arg1[all]].field_0 = sub_f0f0b7c0[arg1[all]].field_0
    sub_f0f0b7c0[arg1[all]].field_128 = sub_f0f0b7c0[arg1[all]].field_128
    if 31 >= sub_f0f0b7c0[arg1[all]][3].length:
        idx = 0
        while sub_f0f0b7c0[arg1[all]][3].length + 31 / 32 > idx:
            sub_f0f0b7c0[arg1[all]][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_f0f0b7c0[arg1[all]].field_768 = Mask(255, 1, (256 * not sub_f0f0b7c0[arg1[all]].field_768) - 1 and sub_f0f0b7c0[arg1[all]].field_768) + 1
        if not Mask(255, 1, (256 * not sub_f0f0b7c0[arg1[all]].field_768) - 1 and sub_f0f0b7c0[arg1[all]].field_768):
            idx = 0
            while sub_f0f0b7c0[arg1[all]][3].length + 31 / 32 > idx:
                sub_f0f0b7c0[arg1[all]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_f0f0b7c0[arg1[all]][3].length + 31 / 32 > idx:
                sub_f0f0b7c0[arg1[all]][s + 3].field_0 = sub_f0f0b7c0[arg1[all]][idx + 3].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_f0f0b7c0[arg1[all]][3].length + 31 / 32
            while sub_f0f0b7c0[arg1[all]][3].length + 31 / 32 > idx:
                sub_f0f0b7c0[arg1[all]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    sub_97c052f1[uint64(stor3.field_0)] = sha3(arg1[all])
    Mask(96, 0, stor3.field_160) = Mask(96, 0, sub_12d3b72a + 1)
    return 1
}



}
