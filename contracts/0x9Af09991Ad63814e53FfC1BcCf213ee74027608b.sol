contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = code.data[2370 len 32]
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[138 len 2232]
}



// =====================  Runtime code  =====================


const sub_651e723c(?) = 1


address owner;
uint256 stor0;
mapping of uint256 sub_8a9564c2;
array of uint256 stor2;
address recipientAddress;
uint256 stor3;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403021;

function servers(uint256 arg1) payable {
    require arg1 < stor2.length
    return address(stor[code.data[2200 len 32] + arg1])
}

function recipient() payable {
    return address(recipientAddress)
}

function sub_8a9564c2(?) payable {
    return sub_8a9564c2[arg1]
}

function owner() payable {
    return address(owner)
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function setRecipient(address arg1) payable {
    if address(owner) != msg.sender:
        return 0
    uint256(stor3) = arg1 or Mask(96, 160, uint256(stor3))
    return 1
}

function getAccountBalance(address arg1) payable {
    call address(recipientAddress).0x93423e9c with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_26043942(?) payable {
    idx = 1
    while idx < stor2.length:
        mem[0] = 2
        if address(stor[code.data[2200 len 32] + idx]) != tx.origin:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function _fallback() payable {
    idx = 1
    while idx < stor2.length:
        mem[0] = 2
        if address(stor[code.data[2200 len 32] + idx]) != tx.origin:
            idx = idx + 1
            continue 
        if calldata.size <= 0:
            return 0
        call address(recipientAddress) with:
           funct call.data[0 len 4]
             gas gas_remaining - 25050 wei
            args call.data[4 len calldata.size - 4]
        return ext_call.success
    return 0
}

function sub_3ed48679(?) payable {
    idx = 1
    while idx < stor2.length:
        mem[0] = 2
        if address(stor[code.data[2200 len 32] + idx]) != tx.origin:
            idx = idx + 1
            continue 
        call address(recipientAddress).transfer(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining - 25050 wei
            args address(arg1), address(arg2), arg3
        require ext_call.success
        return ext_call.return_data[0]
    return 0
}

function sub_43b7db2b(?) payable {
    if address(owner) != msg.sender:
        return 0
    if sub_8a9564c2[address(arg1)] < 1:
        return 0
    sub_8a9564c2[address(arg1)] = 0
    require stor2.length - 1 < stor2.length
    if sub_8a9564c2[address(arg1)] + 1 < stor2.length:
        sub_8a9564c2[stor4057[stor2.length]] = sub_8a9564c2[address(arg1)]
        require sub_8a9564c2[address(arg1)] < stor2.length
        address(stor[stor1[address(arg1)] + code.data[2200 len 32]]) = stor4057[stor2.length]
    stor4057[stor2.length] = 0
    stor2.length--
    if not stor2.length <= stor2.length - 1:
        idx = stor2.length - 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return 1
}

function sub_0bbcc2d4(?) payable {
    if address(owner) != msg.sender:
        return 0
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if sub_8a9564c2[mem[(32 * idx) + 140 len 20]] > 0:
            return 0
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            s = stor2.length + code.data[2200 len 32] + 1
            while code.data[2200 len 32] + stor2.length > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        require idx < arg1.length
        require stor2.length < stor2.length
        uint256(stor[stor2.length + code.data[2200 len 32]]) = mem[(32 * idx) + 128]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        sub_8a9564c2[mem[(32 * idx) + 140 len 20]] = stor2.length
        s = stor2.length
        idx = idx + 1
        continue 
    return 1
}



}
