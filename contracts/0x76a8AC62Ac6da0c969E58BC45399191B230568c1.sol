contract main {


// =======================  Init code  ======================


uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor4 = code.data[2438 len 32]
    return code.data[57 len 2381]
}



// =====================  Runtime code  =====================


const getOwner = 0


uint32 stor0;
uint256 stor0; offset 32
uint256 stor0;
array of struct ideaDate;
mapping of struct stor2;
address owner;
uint256 fee;

function getIdeaDate(uint256 arg1) payable {
    return ideaDate[arg1].field_512
}

function getIdeaDescription(uint256 arg1) payable {
    return ideaDate[arg1][3][0 len ideaDate[arg1][3].length].field_0
}

function owner() payable {
    return owner
}

function sub_917c43c5(?) payable {
    return fee
}

function fee() payable {
    return fee
}

function destroy() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function changeContractFee(uint256 arg1) payable {
    if owner != msg.sender:
        return 0
    return arg1
}

function ideaProofDocument(bytes arg1, uint256 arg2) payable {
    if msg.sender == owner:
        ideaDate[arg2][4][].field_0 = Array(len=arg1.length, data=arg1[all])
        emit IdeaChangeEvent(block.timestamp, sha3('Entered Idea Proof Document'), sha3('Idea proof in IPFS'));
}

function getIdeaParties(uint256 arg1) payable {
    if ideaDate[arg1].field_256:
        mem[160] = address(ideaDate[arg1][1].field_0)
        idx = 160
        s = 0
        while (32 * ideaDate[arg1].field_256) + 128 > idx:
            mem[idx + 32] = address(ideaDate[arg1][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=ideaDate[arg1].field_256, data=mem[160 len 32 * ideaDate[arg1].field_256])
}

function getIdea(address arg1) payable {
    if stor2[address(arg1)].field_0:
        mem[160] = uint32(stor2[address(arg1)].field_0)
        idx = 160
        s = 0
        while (32 * stor2[address(arg1)].field_0) + 128 > idx:
            mem[idx + 32] = uint32(stor2[address(arg1)].field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    return Array(len=stor2[address(arg1)].field_0, data=mem[160 len 32 * stor2[address(arg1)].field_0])
}

function createIdea(address arg1, address[] arg2, string arg3) payable {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len arg3.length] = arg3[all]
    if owner != msg.sender:
        return 0
    if msg.value < fee:
        return 0
    if msg.value > fee:
        call msg.sender with:
           value msg.value - fee wei
             gas 0 wei
    uint256(stor0.field_0) = Mask(224, 0, stor0.field_32)
    stor2[address(arg1)].field_0++
    if not stor2[address(arg1)].field_0 <= stor2[address(arg1)].field_0 + 1:
        idx = stor2[address(arg1)].field_0 + 8 / 8
        while stor2[address(arg1)].field_0 + 7 / 8 > idx:
            stor2[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg1)][Mask(253, 0, stor2[address(arg1)].field_3)].field_0 = uint32(stor0.field_0) * 256^(4 * stor2[address(arg1)].field_0 % 8) or stor2[address(arg1)][Mask(253, 0, stor2[address(arg1)].field_3)].field_0 and !(test266151307() * 256^(4 * stor2[address(arg1)].field_0 % 8))
    uint32(ideaDate[uint32(stor0.field_0)].field_0) = uint32(stor0.field_0)
    Mask(224, 0, ideaDate[uint32(stor0.field_0)].field_32) = Mask(224, 0, arg1)
    uint64(ideaDate[uint32(stor0.field_0)].field_192) = 0
    idx = 0
    while uint16(idx) < arg2.length:
        ideaDate[uint32(stor0.field_0)].field_256++
        if not ideaDate[uint32(stor0.field_0)].field_256 <= ideaDate[uint32(stor0.field_0)].field_256 + 1:
            s = ideaDate[uint32(stor0.field_0)].field_256 + sha3(sha3(uint32(stor0.field_0), 1) + 1) + 1
            while sha3(sha3(uint32(stor0.field_0), 1) + 1) + ideaDate[uint32(stor0.field_0)].field_256 > s:
                stor[s] = 0
                s = s + 1
                continue 
        mem[0] = sha3(uint32(stor0.field_0), 1) + 1
        require uint16(idx) < arg2.length
        stor[ideaDate[uint32(stor0.field_0)].field_256 + ('array', 1, ('map', ('type', 32, ('field', 0, ('stor', ('name', 'stor0', 0)))), ('name', 'ideaDate', 1)))].field_0 = mem[(32 * uint16(idx)) + 128]
        idx = idx + 1
        continue 
    ideaDate[uint32(stor0.field_0)].field_512 = block.timestamp
    ideaDate[uint32(stor0.field_0)][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    emit IdeaChangeEvent(ideaDate[uint32(stor0.field_0)].field_512, sha3('IPOI Contract Creation'), sha3(arg3[all]));
    return uint32(stor0.field_0)
}



}
