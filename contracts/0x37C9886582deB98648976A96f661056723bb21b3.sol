contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -2684] = code.data[2892 len -2684]
    mem[64] = -2588
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[208 len 2684]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 category;
array of struct stor2;
uint256 sub_723e046e;
uint256 sub_e4b79a07;
uint256 messageCount;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403027;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403029;
array of uint256 stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747808;

function messageCount() payable {
    return messageCount
}

function sub_723e046e(?) payable {
    return sub_723e046e
}

function owner() payable {
    return address(owner)
}

function sub_e4b79a07(?) payable {
    return sub_e4b79a07
}

function category() payable {
    return category[0 len category.length]
}

function transferOwnership(address arg1) payable {
    if msg.sender == address(owner):
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function collectDonations(uint256 arg1, address arg2) payable {
    if address(owner) != msg.sender:
    call arg2 with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
}

function like(uint256 arg1) payable {
    require arg1 < stor2.length
    require not uint8(stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)])
    require arg1 < stor2.length
    uint8(stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0][address(msg.sender)]) = 1
    stor4057[arg1]++
    require sub_e4b79a07 < stor2.length
    require arg1 < stor2.length
    if stor2[arg1] > stor4057[stor4]:
        sub_e4b79a07 = arg1
    if msg.value > 0:
        require arg1 < stor2.length
        stor4057[arg1] += msg.value
        call address(stor4057[arg1]) with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    emit newLike(msg.sender, msg.value, arg1);
}

function messages(uint256 arg1) payable {
    require arg1 < stor2.length
    mem[352] = uint256(stor[sha3((8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4)])
    idx = 352
    s = 0
    while stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return stor5640[arg1], 
           stor4057[arg1],
           stor4057[arg1],
           address(stor4057[arg1]),
           stor4057[arg1],
           Array(len=stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4].length, data=mem[352 len stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4].length + (floor32(stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4].length - 1) + -stor[(8 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad4].length + 32 % 32)]),
           stor4057[arg1]
}

function sendMessage(string arg1) payable {
    require arg1.length <= 300000
    messageCount = stor2.length
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = 8 * stor2.length + 1
        while sha3(2) + (8 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 6].length:
                mem[0] = idx + sha3(mem[0]) + 6
                s = sha3(idx + sha3(mem[0]) + 6)
                while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 7]) = 0
            idx = idx + 1
            continue 
    require messageCount < stor2.length
    uint256(stor4057[stor5]) = msg.sender or Mask(96, 160, uint256(stor4057[stor5]))
    stor5640[stor5] = msg.value
    uint256(stor[sha3((8 * stor5) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)][]) = Array(len=arg1.length, data=arg1[all])
    require messageCount < stor2.length
    stor4057[stor5] = block.timestamp
    emit newMessage(messageCount);
    require sub_723e046e < stor2.length
    if msg.value > stor5640[stor3]:
        require messageCount < stor2.length
        stor4057[stor5] = 1
        sub_723e046e = messageCount
        emit newMostGenerous(messageCount);
}

function _fallback() payable {
    require msg.value != 0
    messageCount = stor2.length
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = 8 * stor2.length + 1
        while sha3(2) + (8 * stor2.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            address(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 6].length:
                mem[0] = idx + sha3(mem[0]) + 6
                s = sha3(idx + sha3(mem[0]) + 6)
                while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 7]) = 0
            idx = idx + 1
            continue 
    require messageCount < stor2.length
    uint256(stor4057[stor5]) = msg.sender or Mask(96, 160, uint256(stor4057[stor5]))
    stor5640[stor5] = msg.value
    bool(stor5640[stor5].field_0) = 0
    uint255(stor5640[stor5].field_1) = 12
    Mask(248, 0, stor5640[stor5].field_8) = '_I donated!_' / 256
    idx = 0
    while stor[(8 * stor5) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((8 * stor5) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb60)]) = 0
        idx = idx + 1
        continue 
    require messageCount < stor2.length
    stor4057[stor5] = block.timestamp
    emit newMessage(messageCount);
    require sub_723e046e < stor2.length
    if msg.value > stor5640[stor3]:
        require messageCount < stor2.length
        stor4057[stor5] = 1
        sub_723e046e = messageCount
        emit newMostGenerous(messageCount);
}



}
