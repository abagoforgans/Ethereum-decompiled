contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
mapping of uint8 stor2;
bool stor3; offset 256
uint8 stor3;
uint8 stor3; offset 32
uint32 stor3; offset 8
uint256 stor3; offset 40

function _fallback() payable {
    mem[96 len -3949] = code.data[4390 len -3949]
    mem[64] = -3853
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[address(msg.sender)] = 1
    uint8(stor3.field_0) = 1
    stor3.field_8 % 16777216 = 0
    uint8(stor3.field_32) = 1
    Mask(216, 0, stor3.field_40) = Mask(216, 0, msg.sender)
    stor3.field_256 % 1 = 0
    return code.data[441 len 3949]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
array of uint8 isPlaying;
uint8 sub_78600a4f; offset 32
uint32 totalPlayers;
address founderAddress; offset 40
uint256 stor3; offset 32
uint256 stor3;
array of struct stor4;
mapping of uint8 stor99;
array of struct stor39143100329280468107556231533410151018419134684842411016866935372961967991763;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856477;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalPlayers
}

function founder() payable {
    return founderAddress
}

function sub_78600a4f(?) payable {
    return sub_78600a4f
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isPlaying(address arg1) payable {
    return uint8(isPlaying[arg1])
}

function totalPlayers() payable {
    return totalPlayers
}

function executeProposal(uint256 arg1) payable {
    require not sub_78600a4f
    require uint8(isPlaying[address(msg.sender)])
    require arg1 < stor4.length
    require not uint8(stor8A35[arg1].field_176)
    require not uint8(stor568A[arg1].field_168)
    require uint32(stor568A[arg1].field_184) >= totalPlayers
    uint8(stor568A[arg1].field_168) = 1
    emit 0xaffed5d9: arg1, 1
    if not uint8(stor568A[arg1].field_0):
    selfdestruct(address(stor568A[arg1].field_8))
}

function _fallback() payable {
  stop
}

function balanceOf(address arg1) payable {
    if not uint8(isPlaying[address(arg1)]):
        return 0
    return 1
}

function startGame() payable {
    require msg.sender == founderAddress
    require sub_78600a4f
    sub_78600a4f = 0
}

function addPlayer(address arg1) payable {
    require msg.sender == founderAddress
    require sub_78600a4f
    uint256(stor3.field_0) = Mask(224, 0, stor3.field_32)
    uint8(isPlaying[address(arg1)]) = 1
}

function removePlayer(address arg1) payable {
    require msg.sender == founderAddress
    require sub_78600a4f
    require uint8(isPlaying[address(arg1)])
    uint256(stor3.field_0) = Mask(224, 0, stor3.field_32)
    uint8(isPlaying[address(arg1)]) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    if not uint8(isPlaying[address(msg.sender)]):
        return 0
    if arg2 != 1:
        return 0
    uint8(isPlaying[address(msg.sender)]) = 0
    uint8(isPlaying[arg1]) = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function vote(uint256 arg1, bool arg2) payable {
    require not sub_78600a4f
    require uint8(isPlaying[address(msg.sender)])
    require arg1 < stor4.length
    require uint8(stor[(4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e62][address(msg.sender)]) != 1
    require not uint8(stor568A[arg1].field_168)
    require not uint8(stor568A[arg1].field_176)
    uint8(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd4][address(msg.sender)]) = 1
    emit 0xf2913dbe: arg1, msg.sender, arg2
    if arg2:
        Mask(72, 0, stor568A[arg1].field_184) = Mask(72, 0, uint32(stor568A[arg1].field_184) + 1)
    else:
        uint8(stor568A[arg1].field_176) = 1
        emit 0xaffed5d9: arg1, 0
}

function sub_b89aeabe(?) payable {
    require not sub_78600a4f
    require uint8(isPlaying[address(msg.sender)])
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = (4 * stor4.length + 1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1
        while (4 * stor4.length) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1 > idx:
            uint256(stor[idx]) = 0
            if 31 >= stor[idx].length:
                symbol[idx] = 0
                if 31 < stor[idx + 1].length:
                    mem[0] = idx + 1
                    s = sha3(idx + 1)
                    while sha3(idx + 1) + (stor[idx + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                Mask(216, 0, isPlaying[idx]) = 0
                idx = idx + 1
                continue 
            mem[0] = idx
            s = sha3(s)
            while sha3(s) + (stor[s].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            symbol[s] = 0
            if 31 < stor[s + 1].length:
                mem[0] = s + 1
                t = sha3(s + 1)
                while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                    uint256(stor[t]) = 0
                    t = t + 1
                    continue 
            Mask(216, 0, isPlaying[s]) = 0
            s = s + 1
            continue 
    require stor4.length < stor4.length
    uint256(stor4[stor4.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((4 * stor4.length) + ('name', 'stor4', 4) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint8(stor4[stor4.length].field_512) = arg3
    address(stor4[stor4.length].field_520) = arg4
    stor4[stor4.length].field_680 % 281474976710656 = 0
    stor4[stor4.length].field_728 % 1099511627776 = Mask(40, 208, arg4) >> 208
    stor4[stor4.length].field_728 % 1099511627776 = Mask(40, 216, arg3) >> 216
    emit 0x59947ac0: stor4.length, Array(len=arg1.length, data=arg1[all]), arg1.length + 192, arg3, address(arg4)
    return stor4.length
}

function proposals(uint256 arg1) payable {
    require arg1 < stor4.length
    mem[352] = uint256(stor[sha3((4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1)])
    idx = 352
    s = 0
    while stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + (floor32(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length - 1) + -stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 32 % 32) + 352] = stor[(4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length
    mem[stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + (floor32(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length - 1) + -stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 32 % 32) + 384] = uint256(stor[sha3((4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)])
    idx = stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + (floor32(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length - 1) + -stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 32 % 32) + 384
    s = 0
    while stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + (floor32(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length - 1) + -stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 32 % 32) + stor[(4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length, data=mem[352 len stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + (floor32(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length - 1) + -stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 32 % 32) + stor[(4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + (floor32(stor[(4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length - 1) + -stor[(4 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 32 % 32) + 32]), 
           stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + (floor32(stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length - 1) + -stor[(4 * arg1) + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1].length + 32 % 32) + 256,
           uint8(stor8A35[arg1].field_0),
           address(stor8A35[arg1].field_0),
           uint8(stor8A35[arg1].field_0),
           uint8(stor8A35[arg1].field_0),
           uint32(stor8A35[arg1].field_0)
}



}
