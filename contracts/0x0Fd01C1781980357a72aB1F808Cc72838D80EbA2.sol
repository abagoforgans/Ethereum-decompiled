contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint128 stor6; offset 160
uint256 stor6;
array of uint256 stor7;
uint256 stor8;

function _fallback() payable {
    mem[96 len -1816] = code.data[2247 len -1816]
    mem[64] = -1720
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = mem[192]
    stor2 = mem[224]
    stor4 = block.timestamp + (24 * 3600 * mem[256])
    uint256(stor6.field_0) = msg.sender or Mask(96, 160, uint256(stor6.field_0))
    Mask(96, 0, stor6.field_160) = mem[116 len 12]
    stor7.length = mem[mem[128] + 96]
    mem[0] = 7
    if not mem[mem[128] + 96]:
        idx = 0
        while stor7.length + 31 / 32 > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[128] + 128
        while mem[128] + mem[mem[128] + 96] + 128 > idx:
            stor7[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[128] + 96] + 31) >> 5
        while stor7.length + 31 / 32 > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    stor8 = mem[160]
    return code.data[431 len 1816]
}



// =====================  Runtime code  =====================


address stor0;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
mapping of uint256 stor5;
uint32 sub_3e673ba7; offset 160
address stor6;
array of struct stor7;
uint32 sub_7dc35ddd;
uint256 sub_d3d92e96;

function deadline() payable {
    return deadline
}

function beneficiary() payable {
    return beneficiaryAddress
}

function sub_3e673ba7(?) payable {
    return sub_3e673ba7
}

function fundingGoal() payable {
    return fundingGoal
}

function amountRaised() payable {
    return amountRaised
}

function sub_7dc35ddd(?) payable {
    return sub_7dc35ddd
}

function sub_d3d92e96(?) payable {
    return sub_d3d92e96
}

function halt() payable {
    if stor6 != msg.sender:
    selfdestruct(stor6)
}

function claimFunds() payable {
    if not sub_d3d92e96:
        return 1
    if block.timestamp < sub_d3d92e96 + uint32(60 * sub_7dc35ddd):
        return 1
    call beneficiaryAddress with:
       value fundingGoal wei
         gas 0 wei
    selfdestruct(stor6)
}

function claimRefund() payable {
    if block.timestamp < deadline:
    call msg.sender with:
       value stor5[address(msg.sender)] wei
         gas 0 wei
    amountRaised -= stor5[address(msg.sender)]
    if amountRaised:
    selfdestruct(stor0)
}

function _fallback() payable {
    stor5[address(msg.sender)] = msg.value
    amountRaised += msg.value
    if amountRaised >= fundingGoal:
        emit 0x8f38ec1c 
}

function sub_fbaad3b0(?) payable {
    if msg.sender == stor6:
        if amountRaised < fundingGoal:
            return 1
        sub_d3d92e96 = arg1
        emit 0x5b645056: sub_d3d92e96
        return 0
    else:
        return 0
}

function sub_3166f383(?) payable {
    if stor7.length:
        mem[128] = uint256(stor7.field_0)
        idx = 128
        s = 0
        while stor7.length + 96 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor7.length, data=mem[128 len stor7.length])
}



}
