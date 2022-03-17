contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[63 len 2957]
}



// =====================  Runtime code  =====================


address sub_71164d26Address;
uint256 stor0;
address sub_be60040eAddress;
uint256 stor1;
address sub_aaabd6b0Address;
uint256 stor2;
uint64 sub_12d3b72a; offset 160
uint128 stor3; offset 160
address sub_5409b77aAddress;
mapping of struct sub_0f2fbeec;

function sub_0f2fbeec(?) payable {
    mem[288] = sub_0f2fbeec[arg1][2].field_0
    idx = 288
    s = 0
    while sub_0f2fbeec[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_0f2fbeec[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_0f2fbeec[arg1].field_0, 
           sub_0f2fbeec[arg1].field_0,
           sub_0f2fbeec[arg1].field_256,
           sub_0f2fbeec[arg1].field_256,
           Array(len=sub_0f2fbeec[arg1][2].length, data=mem[288 len sub_0f2fbeec[arg1][2].length + (floor32(sub_0f2fbeec[arg1][2].length - 1) + -sub_0f2fbeec[arg1][2].length + 32 % 32)])
}

function sub_12d3b72a(?) payable {
    return sub_12d3b72a
}

function sub_5409b77a(?) payable {
    return sub_5409b77aAddress
}

function sub_71164d26(?) payable {
    return address(sub_71164d26Address)
}

function sub_aaabd6b0(?) payable {
    return address(sub_aaabd6b0Address)
}

function sub_be60040e(?) payable {
    return address(sub_be60040eAddress)
}

function selfDestruct() payable {
    if address(sub_aaabd6b0Address) != msg.sender:
    selfdestruct(address(sub_aaabd6b0Address))
}

function _fallback() payable {
  stop
}

function sub_b8055bd2(?) payable {
    if msg.sender == address(sub_be60040eAddress):
        if sub_0f2fbeec[0].field_256:
            sub_0f2fbeec[arg1[all]].field_128 = uint128(sub_0f2fbeec[arg1[all]].field_128 + arg2)
}

function sub_4b4ae1b6(?) payable {
    if msg.sender == address(sub_aaabd6b0Address):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
        uint256(stor1) = arg2 or Mask(96, 160, uint256(stor1))
        uint256(stor2) = arg3 or Mask(96, 160, uint256(stor2))
}

function addString(string arg1) payable {
    if sub_0f2fbeec[arg1[all]].field_256:
        return 1
    sub_0f2fbeec[arg1[all]].field_0 = sub_0f2fbeec[arg1[all]].field_0
    sub_0f2fbeec[arg1[all]].field_320 = Mask(192, 0, block.timestamp)
    sub_0f2fbeec[arg1[all]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_0f2fbeec[arg1[all]].field_0 = sub_0f2fbeec[arg1[all]].field_0
    sub_0f2fbeec[arg1[all]].field_128 = sub_0f2fbeec[arg1[all]].field_128
    sub_0f2fbeec[arg1[all]].field_256 = sub_0f2fbeec[arg1[all]].field_256
    sub_0f2fbeec[arg1[all]].field_320 = sub_0f2fbeec[arg1[all]].field_320
    if 31 >= sub_0f2fbeec[arg1[all]][2].length:
        idx = 0
        while sub_0f2fbeec[arg1[all]][2].length + 31 / 32 > idx:
            sub_0f2fbeec[arg1[all]][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        sub_0f2fbeec[arg1[all]].field_512 = Mask(255, 1, (256 * not sub_0f2fbeec[arg1[all]].field_512) - 1 and sub_0f2fbeec[arg1[all]].field_512) + 1
        if not Mask(255, 1, (256 * not sub_0f2fbeec[arg1[all]].field_512) - 1 and sub_0f2fbeec[arg1[all]].field_512):
            idx = 0
            while sub_0f2fbeec[arg1[all]][2].length + 31 / 32 > idx:
                sub_0f2fbeec[arg1[all]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_0f2fbeec[arg1[all]][2].length + 31 / 32 > idx:
                sub_0f2fbeec[arg1[all]][s + 2].field_0 = sub_0f2fbeec[arg1[all]][idx + 2].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_0f2fbeec[arg1[all]][2].length + 31 / 32
            while sub_0f2fbeec[arg1[all]][2].length + 31 / 32 > idx:
                sub_0f2fbeec[arg1[all]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor3 = Mask(96, 0, sub_12d3b72a + 1)
    return uint64(sub_12d3b72a - 1)
}



}
