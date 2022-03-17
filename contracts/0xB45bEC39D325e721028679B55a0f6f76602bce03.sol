contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 3164]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 beneficiary;
array of uint256 currency;
uint256 fundingGoal;
uint256 amountRaised;
uint256 deadline;
array of address sub_08f13f8f;

function sub_08f13f8f(?) payable {
    require arg1 < sub_08f13f8f.length
    return address(sub_08f13f8f[arg1])
}

function deadline() payable {
    return deadline
}

function beneficiary() payable {
    return beneficiary[0 len beneficiary.length]
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

function currency() payable {
    return currency[0 len currency.length]
}

function checkGoal() payable {
    mem[64] = 96
    if amountRaised >= fundingGoal:
        s = 0
        idx = 0
        while idx < sub_08f13f8f.length:
            call address(sub_08f13f8f[idx]).0x70a08231 with:
                 gas gas_remaining - 25050 wei
                args address(owner)
            require ext_call.success
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = beneficiary.length
            mem[0] = 1
            mem[mem[64] + 100] = beneficiary
            s = mem[64] + 100
            t = sha3(1)
            while mem[64] + beneficiary.length + 100 > s + 32:
                mem[s + 32] = beneficiary[t]
                s = s + 32
                t = t + 1
                continue 
            call address(sub_08f13f8f[idx]).0x24b76fd5 with:
                 gas gas_remaining - 25050 wei
                args ext_call.return_data[0], Array(len=beneficiary.length, data=mem[mem[64] + 100 len beneficiary.length + (floor32(beneficiary.length - 1) + -beneficiary.length + 32 % 32)])
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            s = address(sub_08f13f8f[idx])
            idx = idx + 1
            continue 
        emit 0x533ebb28 
    else:
        if block.timestamp < deadline:
            if amountRaised < fundingGoal:
                if block.timestamp < deadline:
                emit 0x730d6a08 
            else:
                s = 0
                idx = 0
                while idx < sub_08f13f8f.length:
                    call address(sub_08f13f8f[idx]).0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(owner)
                    require ext_call.success
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = beneficiary.length
                    mem[0] = 1
                    mem[mem[64] + 100] = beneficiary
                    s = mem[64] + 100
                    t = sha3(1)
                    while mem[64] + beneficiary.length + 100 > s + 32:
                        mem[s + 32] = beneficiary[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(sub_08f13f8f[idx]).0x24b76fd5 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], Array(len=beneficiary.length, data=mem[mem[64] + 100 len beneficiary.length + (floor32(beneficiary.length - 1) + -beneficiary.length + 32 % 32)])
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = address(sub_08f13f8f[idx])
                    idx = idx + 1
                    continue 
                emit 0x533ebb28 
        else:
            amountRaised = 0
            s = 0
            idx = 0
            while idx < sub_08f13f8f.length:
                mem[0] = 6
                mem[100] = address(owner)
                call address(sub_08f13f8f[idx]).0x70a08231 with:
                     gas gas_remaining - 25050 wei
                    args address(owner)
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                amountRaised += ext_call.return_data[0]
                s = address(sub_08f13f8f[idx])
                idx = idx + 1
                continue 
            if amountRaised < fundingGoal:
                if block.timestamp < deadline:
                emit 0x730d6a08 
            else:
                s = 160 * sub_08f13f8f.length
                idx = 0
                while idx < sub_08f13f8f.length:
                    call address(sub_08f13f8f[idx]).0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(owner)
                    require ext_call.success
                    mem[mem[64] + 4] = ext_call.return_data[0]
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = beneficiary.length
                    mem[0] = 1
                    mem[mem[64] + 100] = beneficiary
                    s = mem[64] + 100
                    t = sha3(1)
                    while mem[64] + beneficiary.length + 100 > s + 32:
                        mem[s + 32] = beneficiary[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    call address(sub_08f13f8f[idx]).0x24b76fd5 with:
                         gas gas_remaining - 25050 wei
                        args ext_call.return_data[0], Array(len=beneficiary.length, data=mem[mem[64] + 100 len beneficiary.length + (floor32(beneficiary.length - 1) + -beneficiary.length + 32 % 32)])
                    mem[mem[64]] = ext_call.return_data[0]
                    require ext_call.success
                    s = address(sub_08f13f8f[idx])
                    idx = idx + 1
                    continue 
                emit 0x533ebb28 
    selfdestruct(address(owner))
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setup(string arg1, string arg2, uint256 arg3, uint256 arg4) payable {
    beneficiary[] = Array(len=arg1.length, data=arg1[all])
    currency[] = Array(len=arg2.length, data=arg2[all])
    fundingGoal = arg3
    deadline = block.timestamp + (60 * arg4)
}

function sub_25f70344(?) payable {
    if msg.sender == address(owner):
        sub_08f13f8f.length++
        if not sub_08f13f8f.length <= sub_08f13f8f.length + 1:
            idx = sub_08f13f8f.length + 1
            while sub_08f13f8f.length > idx:
                uint256(sub_08f13f8f[idx]) = 0
                idx = idx + 1
                continue 
        require sub_08f13f8f.length < sub_08f13f8f.length
        uint256(sub_08f13f8f[sub_08f13f8f.length]) = arg1 or Mask(96, 160, uint256(sub_08f13f8f[sub_08f13f8f.length]))
}



}
