contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of address stor3;
mapping of uint8 stor4;
address stor7;
uint256 stor7;
uint128 stor8; offset 160
address stor8;
uint256 stor8;
uint256 stor12;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17; offset 8
uint128 stor18; offset 160
uint256 stor18;

function _fallback() payable {
    stor15 = code.data[13163 len 32]
    stor16 = code.data[13131 len 32]
    stor17 = Mask(248, 0, code.data[13195 len 32])
    create contract with 0 wei
                    code: code.data[830 len 444], this.address, 1
    uint256(stor18.field_0) = Mask(96, 0, stor18.field_160)
    stor3.length = code.data[13035 len 32] or Mask(96, 160, stor3.length)
    stor14 = code.data[13067 len 32] or Mask(96, 160, stor14)
    stor12 = code.data[13099 len 32]
    create contract with 0 wei
                    code: code.data[1274 len 444], address(this.address), 0
    uint256(stor7) = create.new_address or Mask(96, 160, uint256(stor7))
    create contract with 0 wei
                    code: code.data[1718 len 444], address(this.address), 0
    uint256(stor8.field_0) = Mask(96, 0, stor8.field_160)
    require address(stor7) != 0
    require address(stor8.field_0) != 0
    stor2.length = block.timestamp
    stor1.length = 5
    stor0 = 1
    if not stor0 <= 1:
        mem[0] = 0
        idx = 14
        while sha3(0) + (14 * stor0) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint16(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                uint256(stor[idx + sha3(mem[0]) + 6]) = 0
                uint8(stor[idx + sha3(mem[0]) + 7]) = 0
                uint256(stor[idx + sha3(mem[0]) + 8]) = 0
                mem[0] = idx + sha3(mem[0]) + 8
                s = sha3(s + sha3(mem[0]) + 8)
                while sha3(s + sha3(mem[0]) + 8) + (4 * uint256(stor[s + sha3(mem[0]) + 8])) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    uint256(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    address(stor[s + sha3(mem[0]) + 3]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 9]) = 0
                uint256(stor[s + sha3(mem[0]) + 10]) = 0
                address(stor[s + sha3(mem[0]) + 13]) = 0
                s = s + 1
                continue 
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint16(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint8(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(idx + sha3(mem[0]) + 8)
            while sha3(idx + sha3(mem[0]) + 8) + (4 * uint256(stor[idx + sha3(mem[0]) + 8])) > s:
                uint256(stor[s]) = 0
                stor1[s] = 0
                stor2[s] = 0
                stor3[s] = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            uint256(stor[idx + sha3(mem[0]) + 10]) = 0
            address(stor[idx + sha3(mem[0]) + 13]) = 0
            idx = idx + 1
            continue 
    stor4[address(this.address)] = 1
    stor4[stor3.length] = 1
    return code.data[2162 len 10873]
}



// =====================  Runtime code  =====================


uint8 payOwnerOnly; offset 160
address owner;
uint256 accumulatedInput;

function payOwnerOnly() payable {
    return payOwnerOnly
}

function owner() payable {
    return owner
}

function accumulatedInput() payable {
    return accumulatedInput
}

function _fallback() payable {
    accumulatedInput += msg.value
}

function payOut(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require msg.value <= 0
    if payOwnerOnly:
        require owner == arg1
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34050 wei
    if not ext_call.success:
        return 0
    emit PayOut(arg2, arg1);
    return 1
}



}
