contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1783]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of struct beneficiary;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
array of struct stor5;
array of address sub_08f13f8f;

function sub_08f13f8f(?) payable {
    require arg1 < stor5.length
    return sub_08f13f8f[arg1]
}

function deadline() payable {
    return deadline
}

function beneficiary() payable {
    return beneficiary[0 len beneficiary.length].field_0
}

function fundingGoal() payable {
    return fundingGoal
}

function amountRaised() payable {
    return amountRaised
}

function owner() payable {
    return address(owner)
}

function checkGoal() payable {
    mem[64] = 96
    if amountRaised >= fundingGoal:
        s = 0
        idx = 0
        while idx < stor5.length:
            call sub_08f13f8f[idx].0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(owner)
            require ext_call.success
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = beneficiary.length
            mem[0] = 1
            mem[mem[64] + 100] = uint256(beneficiary.field_0)
            t = mem[64] + 100
            s = sha3(1)
            while mem[64] + beneficiary.length + 100 > t + 32:
                mem[t + 32] = beneficiary[s].field_0
                t = t + 32
                s = s + 1
                continue 
            call address(beneficiary[Mask(251, 0, beneficiary.length - 1) >> 5].field_0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db000).0x24b76fd5 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], Array(len=beneficiary.length, data=mem[mem[64] + 100 len beneficiary.length + (floor32(beneficiary.length - 1) + -beneficiary.length + 32 % 32)])
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            t = address(beneficiary[Mask(251, 0, beneficiary.length - 1) >> 5].field_0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db000)
            s = sha3(1) + (Mask(251, 0, beneficiary.length - 1) >> 5) + 1
            continue 
        emit 0x533ebb28 
    else:
        if block.timestamp >= deadline:
            amountRaised = 0
            s = 0
            idx = 0
            while idx < stor5.length:
                mem[0] = 5
                mem[100] = address(owner)
                call sub_08f13f8f[idx].0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args address(owner)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                amountRaised += ext_call.return_data[0]
                s = sub_08f13f8f[idx]
                idx = idx + 1
                continue 
        if amountRaised < fundingGoal:
            emit 0x730d6a08 
        else:
            s = 0
            idx = 0
            while idx < stor5.length:
                call sub_08f13f8f[idx].0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args address(owner)
                require ext_call.success
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = beneficiary.length
                mem[0] = 1
                mem[mem[64] + 100] = uint256(beneficiary.field_0)
                t = mem[64] + 100
                s = sha3(1)
                while mem[64] + beneficiary.length + 100 > t + 32:
                    mem[t + 32] = beneficiary[s].field_0
                    t = t + 32
                    s = s + 1
                    continue 
                call address(beneficiary[Mask(251, 0, beneficiary.length - 1) >> 5].field_0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db000).0x24b76fd5 with:
                     gas gas_remaining - 25050 wei
                    args ext_call.return_data[0], Array(len=beneficiary.length, data=mem[mem[64] + 100 len beneficiary.length + (floor32(beneficiary.length - 1) + -beneficiary.length + 32 % 32)])
                mem[mem[64]] = ext_call.return_data[0]
                require ext_call.success
                t = address(beneficiary[Mask(251, 0, beneficiary.length - 1) >> 5].field_0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db000)
                s = sha3(1) + (Mask(251, 0, beneficiary.length - 1) >> 5) + 1
                continue 
            emit 0x533ebb28 
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_25f70344(?) payable {
    if address(owner) == msg.sender:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = stor5.length + 1
            while stor5.length > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor5.length < stor5.length
        stor5[stor5.length].field_0 = Mask(96, 0, stor5[stor5.length].field_160)
}

function rebalance() payable {
    amountRaised = 0
    s = 0
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        mem[100] = address(owner)
        call sub_08f13f8f[idx].0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(owner)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        amountRaised += ext_call.return_data[0]
        s = sub_08f13f8f[idx]
        idx = idx + 1
        continue 
}

function sub_851b806f(?) payable {
    mem[128 len arg1.length] = arg1[all]
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    beneficiary.length = (2 * arg1.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (beneficiary.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    fundingGoal = arg2
    deadline = block.timestamp + (60 * arg3)
}

function redeem() payable {
    mem[64] = 96
    s = 0
    idx = 0
    while idx < stor5.length:
        call sub_08f13f8f[idx].0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(owner)
        require ext_call.success
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = beneficiary.length
        mem[0] = 1
        mem[mem[64] + 100] = uint256(beneficiary.field_0)
        t = mem[64] + 100
        s = sha3(1)
        while mem[64] + beneficiary.length + 100 > t + 32:
            mem[t + 32] = beneficiary[s].field_0
            t = t + 32
            s = s + 1
            continue 
        call address(beneficiary[Mask(251, 0, beneficiary.length - 1) >> 5].field_0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db000).0x24b76fd5 with:
             gas gas_remaining - 25050 wei
            args ext_call.return_data[0], Array(len=beneficiary.length, data=mem[mem[64] + 100 len beneficiary.length + (floor32(beneficiary.length - 1) + -beneficiary.length + 32 % 32)])
        mem[mem[64]] = ext_call.return_data[0]
        require ext_call.success
        t = address(beneficiary[Mask(251, 0, beneficiary.length - 1) >> 5].field_0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db000)
        s = sha3(1) + (Mask(251, 0, beneficiary.length - 1) >> 5) + 1
        continue 
}



}
