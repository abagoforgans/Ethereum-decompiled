contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor9;

function _fallback() payable {
    stor9 = 10^6
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[43 len 6691]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - addIssueBounty(string arg1, uint256 arg2)
#
address stor2;
mapping of struct bounties;
array of uint256 bountiesKey;
mapping of uint8 stor7;

function bountiesKey(uint256 arg1) payable {
    require arg1 < bountiesKey.length
    return bountiesKey[arg1]
}

function bounties(bytes32 arg1) payable {
    mem[352] = bounties[arg1].field_0
    idx = 352
    s = 0
    while bounties[arg1].length + 352 > idx + 32:
        mem[idx + 32] = bounties[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + 352] = bounties[arg1][4].length
    mem[bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + 384] = bounties[arg1][4].field_0
    idx = bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + 384
    s = 0
    while bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + 384 > idx + 32:
        mem[idx + 32] = bounties[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + (floor32(bounties[arg1][4].length - 1) + -bounties[arg1][4].length + 32 % 32) + 416] = bounties[arg1][5].field_0
    idx = bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + (floor32(bounties[arg1][4].length - 1) + -bounties[arg1][4].length + 32 % 32) + 416
    s = 0
    while bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + (floor32(bounties[arg1][4].length - 1) + -bounties[arg1][4].length + 32 % 32) + bounties[arg1][5].length + 416 > idx + 32:
        mem[idx + 32] = bounties[arg1][s + 5].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=bounties[arg1].length, data=mem[352 len bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + (floor32(bounties[arg1][4].length - 1) + -bounties[arg1][4].length + 32 % 32) + 32], bounties[arg1][5].length, mem[bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + (floor32(bounties[arg1][4].length - 1) + -bounties[arg1][4].length + 32 % 32) + 416 len bounties[arg1][5].length + (floor32(bounties[arg1][5].length - 1) + -bounties[arg1][5].length + 32 % 32)]), 
           bounties[arg1].field_256,
           bounties[arg1].field_512,
           bounties[arg1].field_768,
           bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + 256,
           bounties[arg1].length + (floor32(bounties[arg1].length - 1) + -bounties[arg1].length + 32 % 32) + bounties[arg1][4].length + (floor32(bounties[arg1][4].length - 1) + -bounties[arg1][4].length + 32 % 32) + 288,
           bounties[arg1].field_1536
}

function sponsors(address arg1) payable {
    return bool(stor7[arg1])
}

function kill() payable {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
  stop
}

function addSponsor(address arg1) payable {
    require stor2 == msg.sender
    stor7[address(arg1)] = 1
    emit SponsorAdded(arg1);
}



}
