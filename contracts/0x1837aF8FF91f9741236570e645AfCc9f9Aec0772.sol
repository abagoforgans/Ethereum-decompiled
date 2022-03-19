contract main {


// =======================  Init code  ======================


uint8 stor0; offset 8
uint8 stor0; offset 176
uint256 stor0; offset 16
uint256 stor0; offset 8
uint256 stor0;
array of uint256 stor3;
mapping of uint8 stor4;

function _fallback() payable {
    uint8(stor0.field_176) = 0
    Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
    uint256(stor0.field_0) = code.data[4050 len 32]
    stor4[address(msg.sender)] = 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor3[stor3.length] = msg.sender or Mask(96, 160, stor3[stor3.length])
    Mask(248, 0, stor0.field_8) = Mask(248, 0, uint8(stor0.field_8) + 1)
    return code.data[400 len 3650]
}



// =====================  Runtime code  =====================


uint8 sub_9ea06703;
uint8 sub_d1a62648; offset 8
uint8 locked; offset 176
address owner; offset 16
uint256 stor0; offset 8
uint256 proposalCount;
array of struct proposal;
array of address sub_ac6ab9ed;
mapping of uint8 stor4;

function owner() payable {
    return owner
}

function sub_9ea06703(?) payable {
    return sub_9ea06703
}

function sub_ac6ab9ed(?) payable {
    require arg1 < sub_ac6ab9ed.length
    return address(sub_ac6ab9ed[arg1])
}

function getProposal(uint256 arg1) payable {
    require arg1 < proposal.length
    mem[160] = uint256(stor[sha3((7 * arg1) + ('name', 'proposal', 2) + 5)].field_0)
    idx = 160
    s = 0
    while stor[(7 * arg1) + ('name', 'proposal', 2) + 5].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + ('name', 'proposal', 2) + 5)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(7 * arg1) + ('name', 'proposal', 2) + 5].length, data=mem[160 len stor[(7 * arg1) + ('name', 'proposal', 2) + 5].length]), 
           address(proposal[arg1].field_0),
           address(proposal[arg1].field_256),
           uint256(proposal[arg1].field_512),
           uint8(proposal[arg1].field_1024),
           uint8(proposal[arg1].field_1024),
           uint256(proposal[arg1].field_768)
}

function locked() payable {
    return locked
}

function sub_d1a62648(?) payable {
    return sub_d1a62648
}

function proposalCount() payable {
    return proposalCount
}

function kill() payable {
    if not locked:
        if msg.sender == owner:
            selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function lockContract() payable {
    if not locked:
        if msg.sender == owner:
            locked = 1
}

function addAddress(address arg1) payable {
    if not locked:
        if msg.sender == owner:
            if not stor4[address(arg1)]:
                sub_ac6ab9ed.length++
                if not sub_ac6ab9ed.length <= sub_ac6ab9ed.length + 1:
                    idx = sub_ac6ab9ed.length + 1
                    while sub_ac6ab9ed.length > idx:
                        uint256(sub_ac6ab9ed[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_ac6ab9ed[sub_ac6ab9ed.length]) = arg1 or Mask(96, 160, uint256(sub_ac6ab9ed[sub_ac6ab9ed.length]))
                stor4[address(arg1)] = 1
                stor0 = Mask(248, 0, sub_d1a62648 + 1)
}

function signProposal(uint256 arg1) payable {
    if stor4[address(msg.sender)]:
        require arg1 < proposal.length
        if not uint8(stor[(7 * arg1) + ('name', 'proposal', 2) + 6][address(msg.sender)].field_0):
            uint8(stor[(7 * arg1) + ('name', 'proposal', 2) + 6][address(msg.sender)].field_0) = 1
            uint256(proposal[arg1].field_1024) = uint8(proposal[arg1].field_1024) + 1 or Mask(248, 8, uint256(proposal[arg1].field_1024))
            require arg1 < proposal.length
            if uint8(proposal[arg1].field_1024) >= sub_9ea06703:
                if not uint8(proposal[arg1].field_1032):
                    if uint256(proposal[arg1].field_512) <= eth.balance(this.address):
                        uint8(proposal[arg1].field_1032) = 1
                        call address(proposal[arg1].field_256) with:
                           value uint256(proposal[arg1].field_512) wei
                             gas 0 wei
}

function sub_831c43ac(?) payable {
    if not stor4[address(msg.sender)]:
        return 0
    proposal.length++
    if not proposal.length <= proposal.length + 1:
        mem[0] = 2
        idx = (7 * proposal.length) + 7
        while sha3(2) + (7 * proposal.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])].field_0) = 0
            address(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 4].field_0) = 0
            uint8(stor[idx + sha3(mem[0]) + 4].field_8) = 0
            uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
            if 31 < stor[idx + sha3(mem[0]) + 5].length:
                mem[0] = idx + sha3(mem[0]) + 5
                s = sha3(idx + sha3(mem[0]) + 5)
                while sha3(idx + sha3(mem[0]) + 5) + (stor[idx + sha3(mem[0]) + 5].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require proposal.length < proposal.length
    uint256(proposal[proposal.length].field_0) = msg.sender or Mask(96, 160, uint256(proposal[proposal.length].field_0))
    uint256(proposal[proposal.length].field_256) = arg2 or Mask(96, 160, uint256(proposal[proposal.length].field_256))
    uint256(proposal[proposal.length].field_512) = arg3
    uint256(proposal[proposal.length].field_768) = block.timestamp
    uint8(proposal[proposal.length].field_1024) = 1
    uint256(stor[sha3((7 * proposal.length) + ('name', 'proposal', 2) + 5)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint8(stor[(7 * proposal.length) + ('name', 'proposal', 2) + 6][address(msg.sender)].field_0) = 1
    proposalCount++
    return proposal.length
}



}
