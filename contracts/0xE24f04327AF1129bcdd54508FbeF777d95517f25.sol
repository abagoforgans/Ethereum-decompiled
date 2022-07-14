contract main {




// =====================  Runtime code  =====================


#
#  - sub_ae4de348(?)
#
const name = 'Six Degress Unlimited'

const symbol = ''


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint8 stor5;
uint256 stor7;
mapping of struct plyr_;
array of uint256 sub_8338d556;
mapping of struct sub_e5b3f6f2;
mapping of uint256 sub_cc5c8117;
mapping of uint256 sub_d705f265;

function sub_8338d556(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_8338d556[arg1]
    return sub_8338d556[arg1][arg2]
}

function sub_cc5c8117(?) {
    require calldata.size - 4 >= 32
    return sub_cc5c8117[arg1]
}

function activated_() {
    return bool(stor5)
}

function sub_d705f265(?) {
    require calldata.size - 4 >= 32
    return sub_d705f265[arg1]
}

function plyr_(uint256 arg1) {
    require calldata.size - 4 >= 32
    return plyr_[arg1].field_0, plyr_[arg1].field_256, plyr_[arg1].field_512, plyr_[arg1].field_512, plyr_[arg1].field_768
}

function sub_e5b3f6f2(?) {
    require calldata.size - 4 >= 32
    return sub_e5b3f6f2[arg1].field_0, sub_e5b3f6f2[arg1].field_256
}

function sub_89f5e47d(?) {
    return stor0, stor1, stor2
}

function _fallback() payable {
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
}

function sub_da47f03d(?) {
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    sub_d705f265[msg.sender] = 0
}

function sub_4063bb7a(?) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0x24a47b49a56ddb50a4b932270ca6783588e24938)
    staticcall 0x24a47b49a56ddb50a4b932270ca6783588e24938.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    stor7 = arg1
}

function sub_0654d097(?) {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0x24a47b49a56ddb50a4b932270ca6783588e24938)
    staticcall 0x24a47b49a56ddb50a4b932270ca6783588e24938.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    sub_d705f265[address(arg1)] = arg2
}

function sub_b9bbc5db(?) {
    require calldata.size - 4 >= 64
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0x24a47b49a56ddb50a4b932270ca6783588e24938)
    staticcall 0x24a47b49a56ddb50a4b932270ca6783588e24938.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    sub_cc5c8117[address(arg1)] = arg2
}

function activate() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0x24a47b49a56ddb50a4b932270ca6783588e24938)
    staticcall 0x24a47b49a56ddb50a4b932270ca6783588e24938.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    if stor5:
        revert with 0, 'Six Degrees already activated'
    stor5 = 1
}

function pause() {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0x24a47b49a56ddb50a4b932270ca6783588e24938)
    staticcall 0x24a47b49a56ddb50a4b932270ca6783588e24938.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    if bool(stor5) != 1:
        revert with 0, 'Six Degrees is paused'
    stor5 = 0
}

function sub_a840f10b(?) {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require ext_code.size(0x24a47b49a56ddb50a4b932270ca6783588e24938)
    staticcall 0x24a47b49a56ddb50a4b932270ca6783588e24938.isDev(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 23, 0xfe6d73672073656e646572206973206e6f742061206465760000000000000000
    if arg1 > eth.balance(this.address):
        revert with 0, 'sorry out amount'
    if arg1 + stor2 < stor2:
        revert with 0, 'SafeMath add failed'
    stor2 += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithDraw(arg1, block.timestamp, msg.sender);
}

function sub_92cf3791(?) {
    require calldata.size - 4 >= 32
    if bool(stor5) != 1:
        revert with 0, 'sixdegrees is not ready yet'
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if arg1 != msg.sender:
        if not sub_d705f265[address(arg1)]:
            revert with 0, 'sorry pID is incorrect'
        if sub_d705f265[address(arg1)] != sub_cc5c8117[msg.sender]:
            revert with 0, 'sorry pID is incorrect'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 < sub_e5b3f6f2[address(arg1)].field_0:
        revert with 0, 'SafeMath add failed'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 > eth.balance(this.address):
        revert with 0, 'sorry amount error'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 < stor7:
        revert with 0, 'sorry amount error'
    if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0:
        sub_e5b3f6f2[address(arg1)].field_0 = 0
        sub_e5b3f6f2[address(arg1)].field_256 = 0
        if sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 + stor2 < stor2:
            revert with 0, 'SafeMath add failed'
        stor2 = sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 + stor2
        call arg1 with:
           value sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit WithDraw(sub_e5b3f6f2[address(arg1)].field_256 + sub_e5b3f6f2[address(arg1)].field_0, block.timestamp, arg1);
}



}
