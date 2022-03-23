contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;
array of uint256 stor5;
uint256 stor36B6;

function _fallback() payable {
    stor5.length = 2
    if not stor5.length <= 2:
        idx = 2
        while stor5.length > idx:
            stor5[idx] = 0
            idx = idx + 1
            continue 
    require 1 < stor5.length
    stor36B6 = msg.sender or Mask(96, 160, stor36B6)
    stor4[address(msg.sender)] = 1
    stor3 = 1
    stor2.length = 1
    if not stor2.length <= 1:
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad1
        while (3 * stor2.length) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            mem[0] = idx
            s = sha3(s)
            while sha3(s) + (stor[s] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            stor1[s] = 0
            stor2[s] = 0
            s = s + 3
            continue 
    return code.data[367 len 3496]
}



// =====================  Runtime code  =====================


#
#  - multiAccessRevoke(bytes32 arg1)
#  - multiAccessChangeOwner(address arg1, address arg2)
#  - multiAccessOwners(uint256 arg1)
#  - multiAccessRequired()
#  - multiAccessSetRecipient(address arg1)
#  - multiAccessIsOwner(address arg1)
#  - multiAccessHasConfirmed(bytes32 arg1, address arg2)
#
function multiAccessRecipient() payable {
    revert 
}

function _fallback() payable {
    require not msg.sender
    revert 
}

function multiAccessAddOwner(address arg1) payable {
    require not msg.sender
    revert 
}

function multiAccessChangeRequirement(uint256 arg1) payable {
    require not msg.sender
    revert 
}

function multiAccessRemoveOwner(address arg1) payable {
    stor[(0.03125 / calldata.size) + sha3(mem[0])] = (96 * 256^(calldata.size % 32)) + (calldata.size * 256^(calldata.size % 32)) or !(255 * 256^(calldata.size % 32)) and stor[(0.03125 / calldata.size) + sha3(mem[0])]
    revert 
}



}
