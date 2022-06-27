contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_d524b827;
uint256 sub_041e19a3;
uint256 sub_9c5535c4;
address stor4;
mapping of struct sub_9273bb6a;

function sub_041e19a3(?) {
    return sub_041e19a3
}

function owner() {
    return owner
}

function sub_9273bb6a(?) {
    return sub_9273bb6a[arg1].field_0, 
           sub_9273bb6a[arg1].field_256,
           sub_9273bb6a[arg1].field_512,
           sub_9273bb6a[arg1].field_512,
           sub_9273bb6a[arg1].field_768,
           sub_9273bb6a[arg1].field_1024,
           sub_9273bb6a[arg1].field_1280
}

function sub_9c5535c4(?) {
    return sub_9c5535c4
}

function sub_d524b827(?) {
    return sub_d524b827
}

function sendFund() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_250aac1d(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_9c5535c4 = arg1
}

function sub_8f7978a7(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_041e19a3 = arg1
}

function sub_397d6398(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by non-owner.'
    sub_d524b827++
    sub_9273bb6a[stor1].field_0 = sub_d524b827
    emit 0x3a5db403: sub_d524b827, block.timestamp
}

function sub_10ba858a(?) payable {
    if sub_041e19a3 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough amount to promote on this room'
    if sub_9273bb6a[arg1].field_0 != arg1:
        revert with 0, 'No room found regarding this ID'
    if sub_9273bb6a[arg1].field_1024 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sorry this room has no space right now'
    sub_9273bb6a[arg1].field_256 = arg3
    sub_9273bb6a[arg1].field_512 = arg2
    sub_9273bb6a[arg1].field_544 = msg.sender
    sub_9273bb6a[arg1].field_768 = block.timestamp
    if sub_9273bb6a[arg1].field_768 + sub_9c5535c4 < sub_9273bb6a[arg1].field_768:
        revert with 0, 'SafeMath add failed'
    sub_9273bb6a[arg1].field_1024 = sub_9273bb6a[arg1].field_768 + sub_9c5535c4
    sub_9273bb6a[arg1].field_1280++
    emit 0xd01ebd5b: arg1, arg3, arg2 << 224, sub_9273bb6a[arg1].field_768, sub_9273bb6a[arg1].field_1024, msg.sender
    call stor4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit 0x35faa92a: msg.value, 'house_share', stor4
    else:
        emit 0x4c208d58: msg.value, 'house_share', stor4
}



}
