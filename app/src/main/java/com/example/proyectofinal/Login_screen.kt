package com.example.proyectofinal

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.navigation.findNavController
import com.example.proyectofinal.databinding.FragmentLoginScreenBinding

class Login_screen : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        val binding : FragmentLoginScreenBinding=DataBindingUtil.inflate(inflater, R.layout.fragment_login_screen, container, false)
        binding.buttonFirst.setOnClickListener(){view : View ->
            view.findNavController().navigate(R.id.action_login_screen_to_welcome_screen2)
        }


        return binding.root
    }
}