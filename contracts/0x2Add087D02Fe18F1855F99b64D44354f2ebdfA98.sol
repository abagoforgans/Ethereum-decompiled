contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1701]




// =====================  Runtime code  =====================


array of address tokenSalesAll;
array of uint256 tokenSalesByOwner;
array of uint256 tokenSalesByAsset;

function tokenSalesByOwner(address arg1, uint256 arg2) payable {
    require arg2 < tokenSalesByOwner[arg1]
    return tokenSalesByOwner[arg1][arg2]
}

function tokenSalesAll(uint256 arg1) payable {
    require arg1 < tokenSalesAll.length
    return address(tokenSalesAll[arg1])
}

function tokenSalesByAsset(address arg1, uint256 arg2) payable {
    require arg2 < tokenSalesByAsset[arg1]
    return tokenSalesByAsset[arg1][arg2]
}

function _fallback() payable {
    revert 
}

function createSale(address arg1, uint256 arg2) payable {
    create contract with 0 wei
                    code: code.data[813 len 888], address(arg1), arg2
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    tokenSalesAll.length++
    if not tokenSalesAll.length <= tokenSalesAll.length + 1:
        idx = tokenSalesAll.length + 1
        while tokenSalesAll.length > idx:
            uint256(tokenSalesAll[idx]) = 0
            idx = idx + 1
            continue 
    uint256(tokenSalesAll[tokenSalesAll.length]) = create.new_address or Mask(96, 160, uint256(tokenSalesAll[tokenSalesAll.length]))
    tokenSalesByOwner[address(msg.sender)]++
    if not tokenSalesByOwner[address(msg.sender)] <= tokenSalesByOwner[address(msg.sender)] + 1:
        idx = tokenSalesByOwner[address(msg.sender)] + 1
        while tokenSalesByOwner[address(msg.sender)] > idx:
            tokenSalesByOwner[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    tokenSalesByOwner[address(msg.sender)][tokenSalesByOwner[address(msg.sender)]] = tokenSalesAll.length
    tokenSalesByAsset[address(arg1)]++
    if not tokenSalesByAsset[address(arg1)] <= tokenSalesByAsset[address(arg1)] + 1:
        idx = tokenSalesByAsset[address(arg1)] + 1
        while tokenSalesByAsset[address(arg1)] > idx:
            tokenSalesByAsset[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    tokenSalesByAsset[address(arg1)][tokenSalesByAsset[address(arg1)]] = tokenSalesAll.length
    emit TokenSaleCreation(tokenSalesAll.length, address(create.new_address));
    return 0
}



}
