package com.bolton.esdgrocerystore.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bolton.esdgrocerystore.repositories.CartItemRepository;

@Service
public class CartItemServiceImp implements CartItemService {

	@Autowired
	private CartItemRepository cartItemRepository;
}
