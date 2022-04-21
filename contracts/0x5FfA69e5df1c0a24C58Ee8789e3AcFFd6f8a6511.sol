contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 4346]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 categoriesCount;
uint256 titleCount;
mapping of struct titles;
mapping of uint256 balances;
mapping of uint256 salesEth;
mapping of uint256 titlesSold;
mapping of uint256 copiesSold;
array of uint256 usernames;

function balances(address arg1) {
    return balances[arg1]
}

function titles(uint256 arg1) {
    return titles[arg1].field_0, titles[arg1].field_256
}

function titlesSold(address arg1) {
    return titlesSold[arg1]
}

function owner() {
    return owner
}

function categoriesCount() {
    return categoriesCount
}

function titleCount() {
    return titleCount
}

function salesEth(address arg1) {
    return salesEth[arg1]
}

function copiesSold(uint256 arg1) {
    return copiesSold[arg1]
}

function usernames(address arg1) {
    return usernames[arg1][0 len usernames[arg1].length]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function SetRegistrationContract(address arg1) {
    require owner == msg.sender
    stor1 = arg1
}

function RemoveCategory(uint256 arg1) {
    require owner == msg.sender
    emit CategoryDeleted(arg1);
}

function ApproveTitle(uint256 arg1) {
    require owner == msg.sender
    require arg1 < titleCount
    emit TitleApproved(arg1);
}

function AddCategory(string arg1) {
    require owner == msg.sender
    emit CategoryAdded(categoriesCount, Array(len=arg1.length, data=arg1[all]));
    categoriesCount++
}

function DelistTitle(uint256 arg1) {
    require arg1 < titleCount
    if owner != msg.sender:
        require titles[arg1].field_0 == msg.sender
    emit TitleDelisted(arg1);
}

function WidthdrawEarnings(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function RegisterUsername(string arg1) {
    require ext_code.size(stor1)
    call stor1.0xc3c5a547 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    usernames[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function VendTitle(uint256 arg1) payable {
    require arg1 < titleCount
    require msg.value == titles[arg1].field_256
    balances[stor4[arg1].field_0] += msg.value
    require balances[stor4[arg1].field_0] > balances[stor4[arg1].field_0]
    copiesSold[arg1]++
    titlesSold[stor4[arg1].field_0]++
    salesEth[stor4[arg1].field_0] += msg.value
    emit TitlePurchased(msg.sender, arg1);
}

function EditTile(uint256 arg1, uint256 arg2, string arg3, string arg4, string arg5, uint256 arg6) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    require arg1 < titleCount
    require titles[arg1].field_0 == msg.sender
    titles[arg1].field_256 = arg6
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 416] = arg4.length
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448] = arg5.length
        mem[arg4.length + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 480 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            emit TitleUpdated(arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len arg5.length + arg4.length + arg3.length + -ceil32(arg3.length) + 64]), arg3.length + 224, arg4.length + arg3.length + 256, arg6);
        else:
            mem[floor32(arg5.length) + arg4.length + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 480] = mem[floor32(arg5.length) + arg4.length + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 512 len arg5.length % 32]
            emit TitleUpdated(arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len floor32(arg5.length) + arg4.length + arg3.length + -ceil32(arg3.length) + 96]), arg3.length + 224, arg4.length + arg3.length + 256, arg6);
    else:
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 448] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 480 len arg4.length % 32]
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 480] = arg5.length
        mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 512 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            emit TitleUpdated(arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len arg5.length + floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 96]), arg3.length + 224, floor32(arg4.length) + arg3.length + 288, arg6);
        else:
            mem[floor32(arg5.length) + floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 512] = mem[floor32(arg5.length) + floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 544 len arg5.length % 32]
            emit TitleUpdated(arg1, arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + ceil32(arg5.length) + 416 len floor32(arg5.length) + floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 128]), arg3.length + 224, floor32(arg4.length) + arg3.length + 288, arg6);
}

function AddTitle(uint256 arg1, string arg2, string arg3, string arg4, uint256 arg5) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = 0
    require ext_code.size(stor1)
    call stor1.0xc3c5a547 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require 1 == bool(ext_call.return_data[0])
    titles[stor3].field_0 = msg.sender
    titles[stor3].field_256 = arg5
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 576] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = arg4.length
        mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit TitleAdded(titleCount, msg.sender, arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len arg4.length + arg3.length + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 256, arg3.length + arg2.length + 288, arg5);
        else:
            mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = mem[floor32(arg4.length) + arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 672 len arg4.length % 32]
            emit TitleAdded(titleCount, msg.sender, arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len floor32(arg4.length) + arg3.length + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 256, arg3.length + arg2.length + 288, arg5);
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 640 len arg3.length % 32]
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 640] = arg4.length
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            emit TitleAdded(titleCount, msg.sender, arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len arg4.length + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 96]), arg2.length + 256, floor32(arg3.length) + arg2.length + 320, arg5);
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 672] = mem[floor32(arg4.length) + floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 704 len arg4.length % 32]
            emit TitleAdded(titleCount, msg.sender, arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg4.length) + 576 len floor32(arg4.length) + floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 128]), arg2.length + 256, floor32(arg3.length) + arg2.length + 320, arg5);
    titleCount++
}



}
