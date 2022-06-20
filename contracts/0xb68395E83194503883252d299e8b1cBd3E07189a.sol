contract main {




// =====================  Runtime code  =====================


mapping of address games_;
mapping of uint256 gameNames_;
mapping of uint256 gameIDs_;
uint256 gID_;
uint256 pID_;
mapping of uint32 pIDxAddr_;
mapping of struct plyr_;
uint256 stor3E5F;
uint8 stor3E5F;
uint256 stor3E5F;
uint256 stor3E5F;
uint256 stor3E5F;
address stor8819;
uint256 stor8819;
uint8 stor8819;
uint256 stor8819;
uint256 stor8819;
uint256 stor8819;

function pIDxAddr_(address arg1) {
    return uint256(pIDxAddr_[arg1])
}

function gameNames_(address arg1) {
    return gameNames_[arg1]
}

function pID_() {
    return pID_
}

function gID_() {
    return gID_
}

function games_(uint256 arg1) {
    return games_[arg1]
}

function gameIDs_(address arg1) {
    return gameIDs_[arg1]
}

function plyr_(uint256 arg1) {
    return plyr_[arg1].field_0, 
           plyr_[arg1].field_256,
           plyr_[arg1].field_512,
           plyr_[arg1].field_512,
           plyr_[arg1].field_528,
           plyr_[arg1].field_768,
           plyr_[arg1].field_1024,
           plyr_[arg1].field_1280
}

function _fallback() payable {
    revert
}

function sub_019359df(?) {
    if 0xc0dc8af4f08403cbb7fc39c7dc69c12b61f9ff85 != msg.sender:
        if not gameIDs_[msg.sender]:
            revert with 0, 'only team just can activate'
    return pID_
}

function sub_8ec68b67(?) {
    if not gameIDs_[msg.sender]:
        revert with 0, 'you are not my game'
    if uint256(pIDxAddr_[address(arg3)]):
        require ext_code.size(games_[stor2[msg.sender]])
        call games_[stor2[msg.sender]].0x801d4acb with:
             gas gas_remaining wei
            args 0, uint32(pIDxAddr_[address(arg3)]), plyr_[uint256(stor5[address(arg3)])].field_0, plyr_[uint256(stor5[address(arg3)])].field_256, plyr_[uint256(stor5[address(arg3)])].field_512, plyr_[uint256(stor5[address(arg3)])].field_512, plyr_[arg1].field_512, plyr_[uint256(stor5[address(arg3)])].field_768, plyr_[uint256(stor5[address(arg3)])].field_1024, plyr_[uint256(stor5[address(arg3)])].field_1280
    else:
        pID_++
        uint256(pIDxAddr_[address(arg3)]) = pID_ + 1
        plyr_[stor4 + 1].field_0 = arg3
        plyr_[stor4 + 1].field_768 = arg1
        plyr_[stor4 + 1].field_256 = arg2
        plyr_[stor4 + 1].field_512 = arg4
        plyr_[stor4 + 1].field_520 = arg5
        if plyr_[arg1].field_512 == 1:
            plyr_[stor4 + 1].field_1024 = arg1
        else:
            plyr_[stor4 + 1].field_1024 = plyr_[arg1].field_1024
        if plyr_[arg1].field_512 == 2:
            plyr_[stor4 + 1].field_1280 = arg1
        else:
            plyr_[stor4 + 1].field_1280 = plyr_[arg1].field_1280
        plyr_[arg1].field_528 = uint32(plyr_[arg1].field_528 + 1)
        require ext_code.size(games_[stor2[msg.sender]])
        call games_[stor2[msg.sender]].0x801d4acb with:
             gas gas_remaining wei
            args 0, uint32(pID_ + 1), plyr_[stor4 + 1].field_0, plyr_[stor4 + 1].field_256, plyr_[stor4 + 1].field_512, plyr_[stor4 + 1].field_512, plyr_[arg1].field_512, plyr_[stor4 + 1].field_768, plyr_[stor4 + 1].field_1024, plyr_[stor4 + 1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return uint256(pIDxAddr_[address(arg3)])
}

function addGame(address arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if 0xc0dc8af4f08403cbb7fc39c7dc69c12b61f9ff85 != msg.sender:
        if not gameIDs_[msg.sender]:
            revert with 0, 'only team just can activate'
    if gameIDs_[address(arg1)]:
        revert with 0, 'derp, that games already been registered'
    gID_++
    if arg2.length > 32:
        revert with 0, 'string must be between 1 and 32 characters'
    if arg2.length <= 0:
        revert with 0, 'string must be between 1 and 32 characters'
    require 0 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        revert with 0, 'string cannot start or end with space'
    require arg2.length - 1 < arg2.length
    if 0x2000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[arg2.length + 127]):
        revert with 0, 'string cannot start or end with space'
    require 0 < arg2.length
    if 0x3000000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[128]):
        require 1 < arg2.length
        if 0x7800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0x'
        require 1 < arg2.length
        if 0x5800000000000000000000000000000000000000000000000000000000000000 == Mask(8, 248, mem[129]):
            revert with 0, 'string cannot start with 0X'
    gameIDs_[address(arg1)] = gID_
    gameNames_[address(arg1)] = mem[128]
    games_[stor3] = arg1
    require ext_code.size(games_[stor3])
    call games_[stor3].0x801d4acb with:
         gas gas_remaining wei
        args 1, plyr_[1].field_0, stor3E5F, stor3E5F, stor3E5F, 0, stor3E5F, stor3E5F, stor3E5F
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(games_[stor3])
    call games_[stor3].0x801d4acb with:
         gas gas_remaining wei
        args 2, stor8819, stor8819, stor8819, stor8819, 0, stor8819, stor8819, stor8819
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
