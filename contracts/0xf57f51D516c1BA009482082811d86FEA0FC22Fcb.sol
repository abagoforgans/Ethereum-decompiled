contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 2099]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
uint256 stor1;
array of struct stor2;
array of address activePlayers;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403016;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403017;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403020;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403021;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of uint8 stor29102676481673041902632991033461445430619272659676223336789171408008386403027;

function owner() {
    return address(owner)
}

function activePlayers(uint256 arg1) {
    require arg1 < activePlayers.length
    return address(activePlayers[arg1])
}

function getPlayerCount() {
    return activePlayers.length
}

function kill() {
    if address(stor1) != msg.sender:
    selfdestruct(address(stor1))
}

function _fallback() payable {
    revert 
}

function mortal() {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
}

function transferOwnership(address arg1) {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_3824a8ae(?) {
    activePlayers.length++
    if not activePlayers.length > activePlayers.length + 1:
        activePlayers.length++
    else:
        idx = activePlayers.length + 1
        while activePlayers.length > idx:
            uint256(activePlayers[idx]) = 0
            idx = idx + 1
            continue 
        activePlayers.length++
        if not activePlayers.length <= activePlayers.length + 1:
            idx = activePlayers.length + 1
            while activePlayers.length > idx:
                uint256(activePlayers[idx]) = 0
                idx = idx + 1
                continue 
    uint256(activePlayers[activePlayers.length]) = msg.sender or Mask(96, 160, uint256(activePlayers[activePlayers.length]))
}

function sub_ebe63ffc(?) {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        mem[0] = 2
        idx = (6 * stor2.length) + 6
        while sha3(2) + (6 * stor2.length) > idx + sha3(mem[0]):
            Mask(168, 0, stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 3].length:
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint8(stor[idx + sha3(mem[0]) + 5]) = 0
                idx = idx + 6
                continue 
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(s + sha3(mem[0]) + 2)
            while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 3]) = 0
            if 31 < stor[s + sha3(mem[0]) + 3].length:
                mem[0] = s + sha3(mem[0]) + 3
                t = sha3(s + sha3(mem[0]) + 3)
                while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            uint256(stor[s + sha3(mem[0]) + 4]) = 0
            uint8(stor[s + sha3(mem[0]) + 5]) = 0
            s = s + 6
            continue 
    require stor2.length - 1 < stor2.length
    address(stor4057[stor2.length].field_0) = msg.sender
    uint8(stor4057[stor2.length].field_160) = 1
    Mask(88, 0, stor4057[stor2.length].field_168) = Mask(88, 168, msg.sender) >> 168
    stor4057[stor2.length] = block.timestamp
    uint256(stor[sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5aca)][]) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acb)][]) = Array(len=arg2.length, data=arg2[all])
    stor4057[stor2.length] = arg3
    uint8(stor4057[stor2.length].field_0) = 0
    stor4057[stor2.length].field_256 % 1 = 0
}

function members(uint256 arg1) {
    require arg1 < stor2.length
    mem[352] = uint256(stor[sha3((6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0)])
    idx = 352
    s = 0
    while stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 352] = stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length
    mem[stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 384] = uint256(stor[sha3((6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1)])
    idx = stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 384
    s = 0
    while stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2[arg1].field_0), 
           bool(uint8(stor2[arg1].field_160)),
           stor4057[arg1],
           Array(len=stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length, data=mem[352 len stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1].length + 32 % 32) + 32]),
           stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + (floor32(stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length - 1) + -stor[(6 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad0].length + 32 % 32) + 256,
           stor4057[arg1],
           bool(stor4057[arg1])
}



}
