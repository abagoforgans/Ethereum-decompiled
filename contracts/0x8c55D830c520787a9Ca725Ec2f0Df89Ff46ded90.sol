contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor4057;

function _fallback() payable {
    stor1 = 50 * 10^18
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 1
    if not stor2 <= 1:
        mem[0] = 2
        idx = 4
        while sha3(2) + (4 * stor2) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            Mask(168, 0, stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 1
            continue 
    require 0 < stor2
    stor4057 = 0
    return code.data[316 len 3381]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
uint256 fees;
array of struct stor2;
mapping of uint256 index;
array of uint256 sub_66cf2168;
array of address stor39012587308167444720038037897580552815671242007440487229414614828470849747802;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747803;
array of struct stor39012587308167444720038037897580552815671242007440487229414614828470849747804;
array of struct stor93290129138159411324836937120403009621891547319459501622910357332180129266522;

function index(bytes32 arg1) payable {
    return index[arg1]
}

function sub_66cf2168(?) payable {
    return sub_66cf2168[arg1][0 len sub_66cf2168[arg1].length]
}

function owner() payable {
    return address(owner)
}

function fees() payable {
    return fees
}

function _fallback() payable {
  stop
}

function setFees(uint256 arg1) payable {
    if msg.sender == address(owner):
        fees = arg1
}

function transferOwnership(address arg1) payable {
    if address(owner) == msg.sender:
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function collectFees(uint256 arg1, address arg2) payable {
    if address(owner) != msg.sender:
    call arg2 with:
       value arg1 wei
         gas 0 wei
    require ext_call.success
}

function setUserDisplayName(string arg1) payable {
    require arg1.length <= 32
    sub_66cf2168[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit newUserDisplayName(msg.sender);
}

function remove(string arg1) payable {
    require arg1.length >= 2
    mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
    require index[arg1[all]]
    require index[arg1[all]] < stor2.length
    if address(owner) != msg.sender:
        require address(storCE40[stor3[arg1[all]]].field_8) == msg.sender
    bool(stor5640[stor3[arg1[all]]].field_0) = 0
    uint255(stor5640[stor3[arg1[all]]].field_1) = 0
    Mask(248, 0, stor5640[stor3[arg1[all]]].field_8) = mem[ceil32(arg1.length) + 160 len 31]
    idx = 0
    while stor[(4 * stor3[arg1[all]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((4 * stor3[arg1[all]]) + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b)]) = 0
        idx = idx + 1
        continue 
    require index[arg1[all]] < stor2.length
    uint8(storCE40[stor3[arg1[all]]].field_0) = 0
    address(stor5640[stor3[arg1[all]]]) = 0
    stor5640[stor3[arg1[all]]] = 0
    uint256(stor[(4 * stor3[arg1[all]]) + code.data[3349 len 32]]) = 0
}

function sub_550a3dba(?) payable {
    require arg1 < stor2.length
    mem[288] = uint256(stor[sha3((4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)])
    idx = 288
    s = 0
    while stor[(4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor5640[arg1]), 
           Array(len=stor[(4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length, data=mem[288 len stor[(4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + (floor32(stor[(4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length - 1) + -stor[(4 * arg1) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf].length + 32 % 32)]),
           uint8(storCE40[arg1].field_0),
           address(storCE40[arg1].field_0),
           uint256(stor[(4 * arg1) + code.data[3349 len 32]])
}

function insert(address arg1, string arg2) payable {
    require arg2.length >= 2
    if address(owner) != msg.sender:
        require msg.value == fees
    if index[arg2[all]]:
        require index[arg2[all]] < stor2.length
        if address(owner) != msg.sender:
            if address(storCE40[stor3[arg2[all]]].field_8) != msg.sender:
                require index[arg2[all]] < stor2.length
                require not address(storCE40[stor3[arg2[all]]].field_8)
        require index[arg2[all]] < stor2.length
        if address(storCE40[stor3[arg2[all]]].field_8):
        else:
            uint256(stor[code.data[3349 len 32] + (4 * stor3[arg2[all]])]) = block.timestamp
        uint256(stor5640[stor3[arg2[all]]]) = arg1 or Mask(96, 160, uint256(stor5640[stor3[arg2[all]]]))
        uint256(stor[sha3((4 * stor3[arg2[all]]) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][]) = Array(len=arg2.length, data=arg2[all])
        require index[arg2[all]] < stor2.length
        uint8(storCE40[stor3[arg2[all]]].field_0) = 1
        stor2[stor3[arg2[all]]] = Mask(248, 0, msg.sender)
    else:
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            mem[0] = 2
            idx = 4 * stor2.length + 1
            while sha3(2) + (4 * stor2.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                Mask(168, 0, stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                idx = idx + 1
                continue 
        require stor2.length < stor2.length
        uint256(stor[code.data[3349 len 32] + (4 * stor2.length)]) = block.timestamp
        require stor2.length < stor2.length
        if address(storCE40[stor2.length].field_8):
        else:
            uint256(stor[code.data[3349 len 32] + (4 * stor2.length)]) = block.timestamp
        uint256(stor5640[stor2.length]) = arg1 or Mask(96, 160, uint256(stor5640[stor2.length]))
        uint256(stor[sha3((4 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf)][]) = Array(len=arg2.length, data=arg2[all])
        require stor2.length < stor2.length
        uint8(storCE40[stor2.length].field_0) = 1
        stor2[stor2.length] = Mask(248, 0, msg.sender)
        index[arg2[all]] = stor2.length
    emit newWall(Array(len=arg2.length, data=arg2[all]));
}



}
