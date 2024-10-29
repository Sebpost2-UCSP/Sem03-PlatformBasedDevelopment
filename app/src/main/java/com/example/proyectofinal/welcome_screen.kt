package com.example.proyectofinal

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.navigation.findNavController
import com.example.proyectofinal.databinding.FragmentWelcomeScreenBinding

class welcome_screen : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        // Inflate the layout for this fragment
        val binding : FragmentWelcomeScreenBinding=DataBindingUtil.inflate(inflater, R.layout.fragment_welcome_screen, container, false)

        binding.button.setOnClickListener(){view: View ->
            view.findNavController().navigate(R.id.action_welcome_screen_to_create_task2)
        }
        binding.button2.setOnClickListener(){view: View ->
            view.findNavController().navigate(R.id.action_welcome_screen_to_create_member2)
        }
        binding.button3.setOnClickListener(){view: View ->
            view.findNavController().navigate(R.id.action_welcome_screen_to_delete_member)
        }
        binding.button4.setOnClickListener(){view: View ->
            view.findNavController().navigate(R.id.action_welcome_screen_to_delete_task)
        }


        return binding.root
    }
}